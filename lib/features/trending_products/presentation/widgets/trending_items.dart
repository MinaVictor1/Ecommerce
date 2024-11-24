import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/home_botton.dart';
import 'package:flutter/material.dart';

class TrendingItems extends StatelessWidget {
  const TrendingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("52,082+ Items ", style: TextStyles.font20BlackBold),
        const Row(
          children: [
            HomeButton(
              text: "Sort",
              icon: Icons.sort,
            ),
            SizedBox(
              width: 15,
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
