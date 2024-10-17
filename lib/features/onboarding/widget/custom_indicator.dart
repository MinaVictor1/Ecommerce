import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: active ? Colors.black : Colors.grey,
        ),
        width: active ? 30 : 10,
        height: 10,
      ),
    );
  }
}
