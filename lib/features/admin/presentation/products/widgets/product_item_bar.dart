import 'package:flutter/material.dart';

class ProductItemBar extends StatelessWidget {
  const ProductItemBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.delete),
          color: Colors.red,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.edit),
          color: Colors.green,
        ),
      ],
    );
  }
}
