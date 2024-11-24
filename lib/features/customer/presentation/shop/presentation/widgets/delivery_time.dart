import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/font_weight.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: ColorsManager.lighterpink,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Time',
              style: TextStyles.font16BlackSemiBold
                  .copyWith(fontWeight: FontWeightHelper.medium),
            ),
            Text(
              '1 within Hour',
              style: TextStyles.font16BlackSemiBold.copyWith(fontSize: 21),
            ),
          ],
        ),
      ),
    );
  }
}
