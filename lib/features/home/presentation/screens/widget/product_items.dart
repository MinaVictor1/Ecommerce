import 'package:ecommerce/features/home/presentation/screens/widget/details_container.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/image_container.dart';
import 'package:flutter/material.dart';


class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.44,
        width: MediaQuery.of(context).size.width * 0.6,
        child: const Column(
          children: [
            ImageContainer(
              assetName: "assets/images/sh1.jpeg",
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: DetailsContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
