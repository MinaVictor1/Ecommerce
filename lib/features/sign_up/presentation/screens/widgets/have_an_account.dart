import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'I Already Have an Account ',
                style: TextStyles.font12BlackRegular),
            TextSpan(
                text: 'Login',
                style: TextStyles.font12BlackRegular
                    .copyWith(color: ColorsManager.pink)),
          ],
        ),
      ),
    );
  }
}
