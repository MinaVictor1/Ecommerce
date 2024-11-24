import 'package:ecommerce/features/customer/presentation/home/presentation/widget/categoriesitem.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'name': 'Beauty', 'image': 'assets/images/beauty.png'},
      {'name': 'Fashion', 'image': 'assets/images/fashion.png'},
      {'name': 'Kids', 'image': 'assets/images/kids.png'},
      {'name': 'Mens', 'image': 'assets/images/mens.png'},
      {'name': 'Womens', 'image': 'assets/images/womens.png'},
      {'name': 'Gifts', 'image': 'assets/images/gifts.png'},
    ];
    return Center(
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CategoriesItem(
                image: categories[index]['image']!,
                title: categories[index]['name']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
