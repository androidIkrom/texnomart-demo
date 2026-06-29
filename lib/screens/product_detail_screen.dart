import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../api/api_service.dart';
import '../models/product.dart';
import '../data/database_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductDetailScreen extends StatefulWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final ApiService _apiService = GetIt.I<ApiService>();
  Product? _product;
  bool _isLoading = true;
  String? _error;
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadProductDetail();
    _checkFavorite();
  }

  Future<void> _loadProductDetail() async {
    try {
      final response = await _apiService.getProductDetail(widget.productId);
      setState(() {
        _product = Product.fromJson(response['data']['data']);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _checkFavorite() async {
    final favorite = await DatabaseHelper.instance.isFavorite(widget.productId);
    if (mounted) {
      setState(() {
        _isFavorite = favorite;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (_error != null || _product == null) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Xatolik: ${_error ?? "Mahsulot topilmadi"}')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(_product!.name, style: const TextStyle(color: Colors.black, fontSize: 16)),
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  color: Colors.white,
                  child: CachedNetworkImage(
                    imageUrl: _product!.image,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 16,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await DatabaseHelper.instance.toggleFavorite(_product!);
                          _checkFavorite();
                        },
                        child: _buildCircleButton(
                          _isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: _isFavorite ? Colors.red : Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 12),
                      _buildCircleButton(Icons.balance),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kod: ${_product!.id}', style: const TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          Text(' ${_product!.reviewsAverage ?? 0.0} • ', style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('${_product!.reviewsCount}ta sharh', style: const TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(_product!.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_product!.oldPrice != null)
                    Text(
                      '${_product!.oldPrice!.toInt()} so\'m',
                      style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey, fontSize: 16),
                    ),
                  Text('${_product!.salePrice.toInt()} so\'m', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  if (_product!.axiomMonthlyPrice != null)
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          const Text('Muddatli to\'lovga '),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              _product!.axiomMonthlyPrice!,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: const Offset(0, -2))],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF1C1),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                ),
                child: const Text('Hozir xarid qilish', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () async {
                  await DatabaseHelper.instance.addToCart(_product!);
                  if (mounted) {
                    final messenger = ScaffoldMessenger.of(context);
                    messenger.showSnackBar(
                      const SnackBar(content: Text('Savatchaga qo\'shildi'), duration: Duration(seconds: 1)),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                ),
                child: const Text('Savatchaga qo\'shish', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleButton(IconData icon, {Color color = Colors.grey}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Icon(icon, size: 20, color: color),
    );
  }
}
