import 'package:ecommerce/features/customer/presentation/home/presentation/widget/star_icon.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/text_object.dart';
import 'package:flutter/material.dart';

class StarsContainer extends StatelessWidget {
  const StarsContainer({super.key, required this.flag});
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return flag
        ? const Row(
            children: [
              StarIcon(flag: true),
              StarIcon(flag: true),
              StarIcon(flag: true),
              StarIcon(flag: true),
              StarIcon(flag: false),
              SizedBox(
                width: 2,
              ),
              TextObject(
                text: '344567',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              )
            ],
          )
        : const Row(
            children: [],
          );
  }
}
