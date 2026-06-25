import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/category.dart';
import '../data/mock_data.dart';

class TopCategoriesWidget extends StatelessWidget {
  final List<Category> categories;

  const TopCategoriesWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    // Grouping categories into pairs for 2-row layout
    final List<List<Category>> groupedCategories = [];
    for (int i = 0; i < categories.length; i += 2) {
      List<Category> pair = [categories[i]];
      if (i + 1 < categories.length) {
        pair.add(categories[i + 1]);
      }
      groupedCategories.add(pair);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10.0, bottom: 16.0),
          child: Text(
            'Ommabop kategoriyalar',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 192, // (92 * 2) + gap
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            itemCount: groupedCategories.length + 1,
            itemBuilder: (context, index) {
              if (index == groupedCategories.length) {
                return const _AllCategoriesItem();
              }

              final pair = groupedCategories[index];
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    _CategoryItem(category: pair[0]),
                    const SizedBox(height: 8),
                    if (pair.length > 1)
                      _CategoryItem(category: pair[1])
                    else
                      const SizedBox(height: 92, width: 134), // Placeholder to keep layout consistent
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final Category category;

  const _CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 92,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          // Background Image (fills container like object-cover)
          Positioned.fill(
            child: _buildCategoryImage(category),
          ),
          // Text Overlay (on top of image)
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
            child: Text(
              category.title,
              style: const TextStyle(
                fontSize: 13,
                height: 1.2,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryImage(Category category) {
    // Modelda imageUrl bo'lishi mumkin
    String? imageUrl = category.imageUrl;

    // Har doim birinchi bo'lib MockData dan qidiramiz (HTML dagi aniq rasmlarni olish uchun)
    try {
      final mockCategory = MockData.categories.firstWhere(
        (c) => c.slug == category.slug || c.title == category.title,
      );
      imageUrl = mockCategory.imageUrl;
    } catch (_) {
      // MockData da topilmasa, API dan kelgan imageUrl ni ishlatamiz
    }

    if (imageUrl != null && imageUrl.isNotEmpty) {
      String url = imageUrl;
      
      // Relative URL larni handle qilish
      if (!url.startsWith('http') && !url.startsWith('assets/')) {
        url = 'https://mini-io-api.texnomart.uz$url';
      }

      if (url.startsWith('assets/')) {
        return Image.asset(url, fit: BoxFit.cover);
      }

      return CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.cover,
        alignment: Alignment.center,
        // Yuklanish paytida hech narsa ko'rsatmaymiz (HTML dagi kabi) yoki shaffof placeholder
        placeholder: (context, url) => Container(color: Colors.transparent),
        errorWidget: (context, url, error) => _getFallbackIcon(category.slug),
      );
    }
    return _getFallbackIcon(category.slug);
  }

  Widget _getFallbackIcon(String slug) {
    // Implementation of switch-case for icons as requested
    IconData iconData;
    switch (slug) {
      case 'smartfony':
        iconData = Icons.smartphone;
        break;
      case 'vse-kondicionery-5':
      case 'havo-sovutgichlar':
        iconData = Icons.ac_unit;
        break;
      case 'pylesosy':
        iconData = Icons.cleaning_services;
        break;
      case 'vse-holodilniki':
        iconData = Icons.kitchen;
        break;
      case 'noutbuki':
        iconData = Icons.laptop;
        break;
      case 'televizory':
        iconData = Icons.tv;
        break;
      case 'kofemashiny-i-kofevarki':
        iconData = Icons.coffee_maker;
        break;
      case 'stiralnye-mashinki':
        iconData = Icons.local_laundry_service;
        break;
      case 'fen-dlya-volos':
        iconData = Icons.air;
        break;
      case 'planshety':
        iconData = Icons.tablet_android;
        break;
      default:
        iconData = Icons.category_outlined;
    }
    
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(8),
      child: Icon(iconData, size: 40, color: Colors.grey.withValues(alpha: 0.3)),
    );
  }
}

class _AllCategoriesItem extends StatelessWidget {
  const _AllCategoriesItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 192, // Spans 2 rows
      margin: const EdgeInsets.only(left: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Barcha kategoriyalar',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black),
        ],
      ),
    );
  }
}
