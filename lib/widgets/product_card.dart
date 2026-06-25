import 'package:flutter/material.dart';
import '../models/product.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[200]!),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: product.image,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.contain,
                      placeholder: (context, url) => Container(color: Colors.grey[100]),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                ),
                // Stickers (Top Left/Bottom Left etc. from API)

                Positioned(
                  top: 8,
                  right: 8,
                  child: Column(
                    children: [
                      _ActionButton(icon: Icons.favorite_border),
                      const SizedBox(height: 8),
                      _ActionButton(icon: Icons.balance),
                    ],
                  ),
                ),
              ],
            ),
            
            // Info Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, height: 1.2),
                  ),
                  const SizedBox(height: 6),
                  // Rating and Reviews
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 2),
                      Text(
                        (product.reviewsAverage ?? 5.0).toString(),
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '• ${product.reviewsCount > 0 ? '${product.reviewsCount} ta sharh' : 'Sharh yo\'q'}',
                        style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Price and Installment
                  if (product.axiomMonthlyPrice != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        product.axiomMonthlyPrice!,
                        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                      ),
                    ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (product.oldPrice != null)
                            Text(
                              '${product.oldPrice!.toInt()} so\'m',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          Text(
                            '${product.salePrice.toInt()} so\'m',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ],
                      ),
                      // Add to Cart Button
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber, width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.shopping_cart_outlined, size: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  const _ActionButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.8),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: Colors.grey[700]),
    );
  }
}
