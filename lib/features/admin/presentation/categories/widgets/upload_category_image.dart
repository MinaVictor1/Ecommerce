import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UploadAdminImage extends StatelessWidget {
  const UploadAdminImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40,
          child: CachedNetworkImage(
            imageUrl:
                'https://icons.veryicon.com/png/o/application/designe-editing/add-image-1.png',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
