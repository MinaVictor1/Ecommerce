import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ShopButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const ShopButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorsManager.gray),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 3,
          ),
          Icon(icon, color: ColorsManager.gray),
          const SizedBox(
            width: 9,
          ),
          Text(
            text,
            style: TextStyles.font12BlackRegular,
          ),
          const SizedBox(
            width: 9,
          ),
        ],
      ),
    );
  }
}
