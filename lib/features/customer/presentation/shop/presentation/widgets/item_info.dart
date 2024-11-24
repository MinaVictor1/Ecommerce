import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ItemInfo extends StatelessWidget {
  final String title;
  final String subTitle;
  const ItemInfo({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyles.font20BlackSemiBold,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          subTitle,
          style: TextStyles.font14BlackRegular,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
