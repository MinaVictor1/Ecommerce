import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;
  final Color? textColor;
  final double? space;

  const Button({
    super.key,
    required this.text,
    required this.icon,
    this.color,
    this.textColor,
    this.space,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              color ?? Colors.white,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    side: BorderSide(color: textColor ?? Colors.transparent),
                    borderRadius: BorderRadius.circular(10)))),
        child: Row(
          children: [
            Text(text,
                style: TextStyles.font14BlackRegular
                    .copyWith(color: textColor ?? Colors.black)),
            SizedBox(width: space ?? 5),
            Icon(
              icon,
              color: textColor ?? Colors.black,
            ),
          ],
        ));
  }
}
