import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/widgets/have_an_account.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/widgets/sign_up_textfield.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/widgets/sign_up_offer.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: MediaQuery.of(context).size.height * 0.07),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create an\nAccount', style: TextStyles.font36BlackBold),
            const InputsSignUp(),
            const SignUpOffer(),
            const SignUpButtons(),
            const HaveAnAccount(),
          ],
        ),
      ),
    ));
  }
}
