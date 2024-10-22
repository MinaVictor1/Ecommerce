import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.assetName});
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image:  DecorationImage(
            image: AssetImage(assetName), fit: BoxFit.cover),
      ),
    );
  }
}
