import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/logo/onboarding2.png',
        ),
        Text('Make Payment',
            textAlign: TextAlign.center, style: TextStyles.font24BlackBold),
        const SizedBox(
          height: 13,
        ),
        Center(
          child: Text(
            'Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.',
            textAlign: TextAlign.center,
            style: TextStyles.font15grayRegular,
          ),
        ),
      ],
    );
  }
}
