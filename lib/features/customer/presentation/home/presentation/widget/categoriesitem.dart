import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String image;
  final String title;
  const CategoriesItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(image),
      ),
      const SizedBox(
        height: 7,
      ),
      Text(
        title,
        style: TextStyles.font13PurpleRegular,
      )
    ]);
  }
}
