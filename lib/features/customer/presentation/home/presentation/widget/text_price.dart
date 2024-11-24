import 'package:flutter/material.dart';

class TextPrice extends StatelessWidget {
  const TextPrice({super.key, required this.text, required this.flag});
  final String text;
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: flag
          ? const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          : const TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.grey,
            ),
    );
  }
}
