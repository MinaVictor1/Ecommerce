import 'package:ecommerce/features/customer/presentation/home/presentation/widget/home_botton.dart';
import 'package:flutter/material.dart';

class TrendingHeader extends StatelessWidget {
  const TrendingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '52,082+ Items',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
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
