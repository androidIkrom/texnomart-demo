import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/banner.dart';

class BannerSliderWidget extends StatelessWidget {
  final List<BannerItem> banners;

  const BannerSliderWidget({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    if (banners.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 180,
        child: PageView.builder(
          itemCount: banners.length,
          controller: PageController(viewportFraction: 0.92),
          itemBuilder: (context, index) {
            final banner = banners[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: banner.image,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: Colors.grey[200],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.grey[200],
                    child: const Icon(Icons.error),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
