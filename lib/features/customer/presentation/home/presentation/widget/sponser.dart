import 'package:ecommerce/core/theme/font_weight.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/home_botton.dart';
import 'package:flutter/material.dart';

class Sponser extends StatelessWidget {
  const Sponser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "Sponserd",
          style: TextStyles.font20BlackSemiBold
              .copyWith(fontWeight: FontWeightHelper.regular),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset("assets/images/sponser.png"),
        HomeButton(
          text: "up to 50% Off",
          icon: Icons.arrow_forward_ios_outlined,
          space: MediaQuery.of(context).size.width * 0.5,
        ),
      ],
    );
  }
}
