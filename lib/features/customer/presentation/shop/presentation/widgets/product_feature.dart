import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/shop__button.dart';
import 'package:flutter/material.dart';

class ProductFeature extends StatelessWidget {
  const ProductFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ShopButton(
            icon: Icons.location_on,
            text: "Nearest Store",
          ),
          SizedBox(
            width: 10,
          ),
          ShopButton(
            icon: Icons.lock,
            text: "VIP",
          ),
          SizedBox(
            width: 10,
          ),
          ShopButton(
            icon: Icons.repartition,
            text: "Return Policy",
          ),
        ],
      ),
    );
  }
}
