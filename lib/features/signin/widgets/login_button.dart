import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import 'Circle_Button.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 30,
      ),
      AppTextButton(
        backgroundColor: ColorsManager.red,
        buttonHeight: 60,
        buttonText: 'log in',
        textStyle: const TextStyle(color: Colors.white, fontSize: 25),
        onPressed: () {
          GoRouter.of(context).push(Routes.kButtomNavigationBar);
        },
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        "- OR Continue with -",
        style: TextStyles.font12GreyMedium,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleButton(
            iconPath: "assets/logo/google.png",
            onPressed: () {},
          ),
          CircleButton(
            iconPath: "assets/logo/apple.png",
            onPressed: () {},
          ),
          CircleButton(
            iconPath: "assets/logo/facebook.png",
            onPressed: () {},
          ),
        ],
      ),
      const SizedBox(
        height: 18,
      )
    ]);
  }
}