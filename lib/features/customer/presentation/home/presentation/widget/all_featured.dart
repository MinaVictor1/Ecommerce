import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/home_botton.dart';
import 'package:flutter/material.dart';

class AllFeatured extends StatelessWidget {
  const AllFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Featured", style: TextStyles.font20BlackBold),
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
