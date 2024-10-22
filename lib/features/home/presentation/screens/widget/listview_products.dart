import 'package:ecommerce/features/home/presentation/screens/widget/product_items.dart';
import 'package:flutter/material.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductItems();
        },
      ),
    );
  }
}
