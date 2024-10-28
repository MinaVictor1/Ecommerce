import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function() onPressed;
  final String iconPath;
  const CircleButton(
      {super.key, required this.iconPath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(
              side: BorderSide(color: ColorsManager.pink, width: 3)),
          padding: const EdgeInsets.all(20),
        ),
        child: Image.asset(
          iconPath,
        ),
      ),
    );
  }
}