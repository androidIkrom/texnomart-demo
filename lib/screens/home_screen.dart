import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/product_card.dart';
import '../widgets/top_categories_widget.dart';
import '../widgets/banner_slider_widget.dart';
import 'product_detail_screen.dart';
import '../di/injection.dart';
import '../api/api_service.dart';
import '../models/category.dart';
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> _topCategories = [];
  List<ProductCollection> _collections = [];
  List<Product> _hitProducts = [];
  bool _isLoading = true;

  // Search related
  final TextEditingController _searchController = TextEditingController();
  List<Product> _filteredProducts = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _fetchHomeData();
  }

  Future<void> _fetchHomeData() async {
    try {
      final categoryResponse = await getIt<ApiService>().getTopCategoriesRaw();
      final collectionResponse = await getIt<ApiService>().getSpecialProducts("hit"); 
      final hitProductsResponse = await getIt<ApiService>().getHitProducts();

      final List<dynamic> catListFromApi = categoryResponse['data']['data'];
      final List<dynamic> collList = collectionResponse['data']['data'];
      final List<dynamic> hitList = hitProductsResponse['data']['data'];

      setState(() {
        // ... (filtering logic for categories remains same)
        final List<Category> apiCategories = catListFromApi
            .map((e) {
              final category = Category.fromJson(e);
              debugPrint("API Category: ${category.title}, slug: ${category.slug}, image: ${category.imageUrl}");
              return category;
            })
            .where((category) {
              final title = category.title.toLowerCase();
              final slug = category.slug.toLowerCase();
              return !title.contains('1+1') && 
                     !slug.contains('1-plyus-1') && 
                     !slug.contains('1+1');
            })
            .toList();
        
        if (apiCategories.isEmpty) {
          _topCategories = MockData.categories;
        } else {
          _topCategories = apiCategories;
        }
        
        _collections = collList.map((e) => ProductCollection.fromJson(e)).toList();
        _hitProducts = hitList.map((e) => Product.fromJson(e)).toList();
        _isLoading = false;
      });
    } catch (e) {
      debugPrint("Error fetching home data: $e");
      setState(() {
        _topCategories = MockData.categories;
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (query.isEmpty) {
      setState(() {
        _isSearching = false;
        _filteredProducts = [];
      });
      return;
    }

    final List<Product> allProducts = [];
    allProducts.addAll(_hitProducts);
    for (var collection in _collections) {
      allProducts.addAll(collection.products);
    }

    // Remove duplicates and filter
    final Map<int, Product> distinctProducts = {};
    for (var product in allProducts) {
      if (product.name.toLowerCase().contains(query.toLowerCase())) {
        distinctProducts[product.id] = product;
      }
    }

    setState(() {
      _isSearching = true;
      _filteredProducts = distinctProducts.values.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'texnomart*',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        hintText: 'Qidirish',
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                        suffixIcon: _searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear, color: Colors.grey),
                                onPressed: () {
                                  _searchController.clear();
                                  _onSearchChanged('');
                                },
                              )
                            : null,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _isLoading 
        ? const Center(child: CircularProgressIndicator())
        : _isSearching
            ? _buildSearchResults()
            : SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Banner Slider
            BannerSliderWidget(banners: MockData.banners),

            // Aksiyalar button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: const Text('%', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 8),
                    const Text('Aksiyalar va chegirmalar', style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),

            // Popular Categories
            TopCategoriesWidget(categories: _topCategories),

            // Xit savdo (New Section)
            if (_hitProducts.isNotEmpty) ...[
              _buildSectionHeader('Xit savdo', () {}),
              SizedBox(
                height: 380, // Slightly taller for more details
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _hitProducts.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: _hitProducts[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(product: _hitProducts[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],

            // Collections (Real Products)
            ..._collections.map((collection) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader(collection.name, () {}),
                SizedBox(
                  height: 330,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: collection.products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: collection.products[index],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(product: collection.products[index]),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            )),

            const SizedBox(height: 40),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        mini: true,
        child: const Icon(Icons.arrow_upward, color: Colors.black),
      ),
    );
  }

  Widget _buildSearchResults() {
    if (_filteredProducts.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'Mahsulotlar topilmadi',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: _filteredProducts.length,
      itemBuilder: (context, index) {
        return ProductCard(
          product: _filteredProducts[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: _filteredProducts[index]),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSectionHeader(String title, VoidCallback onSeeAll) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: onSeeAll,
            child: const Row(
              children: [
                Text('hammasi', style: TextStyle(color: Colors.grey)),
                Icon(Icons.chevron_right, color: Colors.grey, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
