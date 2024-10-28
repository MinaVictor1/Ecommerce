import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/app_text_button.dart';

class ForgotButton extends StatelessWidget {
  final Function() onPressed;
  const ForgotButton(
      {required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppTextButton(
          buttonWidth: 150,
          buttonText: 'Forgot Password?',
          backgroundColor: Colors.transparent,
          textStyle: TextStyle(color: ColorsManager.red),
          onPressed: () {},
        ),
      ],
    );
  }
}