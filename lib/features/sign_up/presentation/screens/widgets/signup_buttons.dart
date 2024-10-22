import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/features/sign_up/presentation/screens/widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 30,
      ),
      AppTextButton(
        buttonText: "Create Account",
        textStyle: TextStyles.font20BlackSemiBold.copyWith(color: Colors.white),
        backgroundColor: ColorsManager.red,
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
