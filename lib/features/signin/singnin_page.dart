import 'package:ecommerce/features/signin/widgets/Forgot_text.dart';
import 'package:ecommerce/features/signin/widgets/input_in.dart';
import 'package:ecommerce/features/signin/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../../core/theme/styles.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  bool isObscureTextPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: MediaQuery.of(context).size.height * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome \nBack!", style: TextStyles.font36BlackBold),
                const SizedBox(height: 20),
                const InputsSignIn(),
                ForgotButton(
                  onPressed: () {},
                ),
                const SignUpButtons(),
                Center(
                  child: InkWell(
                    onTap: () => GoRouter.of(context).push(Routes.kSignUp),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Create An Account  ',
                              style: TextStyles.font16BlackSemiBold),
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyles.font18redUnterLine),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}