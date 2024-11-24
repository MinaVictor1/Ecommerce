import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => GoRouter.of(context).push(Routes.kSignUp),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'I Already Have an Account ',
                style: TextStyles.font12BlackRegular,
              ),
              TextSpan(
                text: 'Login',
                style: TextStyles.font12BlackRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
