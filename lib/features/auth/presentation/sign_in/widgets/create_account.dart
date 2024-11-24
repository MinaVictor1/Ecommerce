import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => GoRouter.of(context).push(Routes.kSignUp),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Create An Account  ',
                  style: TextStyles.font16BlackSemiBold),
              TextSpan(text: 'Sign Up', style: TextStyles.font18redUnterLine),
            ],
          ),
        ),
      ),
    );
  }
}
