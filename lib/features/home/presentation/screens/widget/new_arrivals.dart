import 'package:ecommerce/core/theme/font_weight.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/home_botton.dart';
import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset("assets/images/summer_image.png")),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New Arrivals",
                    style: TextStyles.font24BlackBold
                        .copyWith(fontWeight: FontWeightHelper.regular)),
                Text("Summer’ 25 Collections",
                    style: TextStyles.font16BlackSemiBold
                        .copyWith(fontWeight: FontWeightHelper.regular)),
              ],
            ),
            const Spacer(),
            const HomeButton(
                text: "View All", icon: Icons.arrow_forward_outlined)
          ],
        )
      ],
    );
  }
}
