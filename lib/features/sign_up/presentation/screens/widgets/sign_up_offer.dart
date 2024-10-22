import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SignUpOffer extends StatelessWidget {
  const SignUpOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: 'By clicking the ',
              style: TextStyles.font12BlackRegular
                  .copyWith(color: ColorsManager.lighterBlack)),
          TextSpan(
              text: ' Register ',
              style: TextStyles.font12BlackRegular
                  .copyWith(color: ColorsManager.pink)),
          TextSpan(
              text: 'button, you\nagree to the public offer',
              style: TextStyles.font12BlackRegular
                  .copyWith(color: ColorsManager.lighterBlack)),
        ],
      ),
    );
  }
}
