import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/buying_button.dart';
import 'package:flutter/material.dart';

class BuyingProduct extends StatelessWidget {
  const BuyingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Row(children: [
          BuyingButton(
            path: 'assets/logo/icon_buynow.png',
            onTap: () {},
          ),
          const SizedBox(width: 20),
          BuyingButton(
            path: 'assets/logo/icon_gotocart.png',
            onTap: () {},
          ),
        ]),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
