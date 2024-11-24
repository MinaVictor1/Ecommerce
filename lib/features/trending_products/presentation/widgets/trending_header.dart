import 'package:ecommerce/features/home/presentation/screens/widget/home_botton.dart';
import 'package:flutter/material.dart';

class TrendingHeader extends StatelessWidget {
  const TrendingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '52,082+ Items',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Row(
          children: [
            HomeButton(
              text: "Sort",
              icon: Icons.sort,
            ),
            HomeButton(
              text: "Filter",
              icon: Icons.filter_alt_outlined,
            )
          ],
        ),
      ],
    );
  }
}
