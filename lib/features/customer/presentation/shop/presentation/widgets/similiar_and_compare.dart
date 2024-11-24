import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/shop__button.dart';
import 'package:flutter/material.dart';

class SimilarAndCompare extends StatelessWidget {
  const SimilarAndCompare({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        Row(
          children: [
            ShopButton(icon: Icons.remove_red_eye_sharp, text: "View Similar"),
            SizedBox(
              width: 15,
            ),
            ShopButton(icon: Icons.compare, text: "Add to Compare")
          ],
        ),
      ],
    );
  }
}
