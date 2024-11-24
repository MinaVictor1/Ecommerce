import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/auth/presentation/sign_in/widgets/Forgot_password.dart';
import 'package:ecommerce/features/auth/presentation/sign_in/widgets/create_account.dart';
import 'package:ecommerce/features/auth/presentation/sign_in/widgets/sign_in_textfields.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: MediaQuery.of(context).size.height * 0.07),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome \nBack!", style: TextStyles.font36BlackBold),
                const SignInTextFields(),
                ForgotPassword(
                  onPressed: () {},
                ),
                const SignUpButtons(),
                const CreateAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
