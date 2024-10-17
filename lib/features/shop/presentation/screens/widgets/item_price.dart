import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ItemPrice extends StatelessWidget {
  final String mainPrice;
  final String discountPrice;
  final String percentage;
  const ItemPrice(
      {super.key,
      required this.mainPrice,
      required this.discountPrice,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Text(
              "₹$mainPrice",
              style: TextStyles.font15grayRegular.copyWith(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "₹$discountPrice",
              style: TextStyles.font15BlackMedium,
            ),
            const SizedBox(
              width: 20,
            ),
            Text("$percentage% off", style: TextStyles.font15PinkSemiBold),
          ],
        ),
      ],
    );
  }
}
