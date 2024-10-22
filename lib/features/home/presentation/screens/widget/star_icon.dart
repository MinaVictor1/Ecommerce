import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  const StarIcon({super.key, required this.flag});
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return Icon(
      flag ? Icons.star : Icons.star_half,
      color: flag ? Colors.yellow : Colors.grey,
      size: 30,
    );
  }
}
