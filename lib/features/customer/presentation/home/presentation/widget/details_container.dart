import 'package:ecommerce/features/customer/presentation/home/presentation/widget/stars_container.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/text_object.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/text_price.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextObject(
            text: 'HRX by Hrithik Roshan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        TextObject(
            text: 'Neque porro quisquam est qui dolorem ipsum quia',
            style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        TextPrice(text: '\$2499', flag: true),
        Row(
          children: [
            TextPrice(text: '\$3499', flag: false),
            SizedBox(
              width: 10,
            ),
            TextObject(
              text: '50%OFF',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        StarsContainer(
          flag: true,
        ),
      ],
    );
  }
}
