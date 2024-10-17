import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/logo/fashion shop-rafiki 1.png'),
        Text('Choose Products',
            textAlign: TextAlign.center,
            style: TextStyles.font20BlackSemiBold),
        const SizedBox(
          height: 13,
        ),
        Center(
          child: Text(
            'Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia \n consequat duis enim velit mollit.',
            textAlign: TextAlign.center,
            style: TextStyles.font20BlackSemiBold,
          ),
        ),
      ],
    );
  }
}
