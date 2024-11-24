import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

class imgProfile extends StatelessWidget {
  const imgProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: ColorsManager.red,
            child: CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/profile_image.png'), // Replace with your image asset
            ),
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: ColorsManager.red,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 19,
            ),
          ),
        ],
      ),
    );
  }
}
