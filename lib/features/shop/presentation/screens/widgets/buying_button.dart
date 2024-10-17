import 'package:flutter/material.dart';

class BuyingButton extends StatelessWidget {
  final Function()? onTap;
  final String path;
  const BuyingButton({super.key, this.onTap, required this.path});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(path)));
  }
}
