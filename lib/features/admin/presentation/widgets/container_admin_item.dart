import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ContainerAdminItem extends StatelessWidget {
  const ContainerAdminItem({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.17,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                const Color(0xff353F54).withOpacity(0.8),
                const Color(0xff222834).withOpacity(0.8),
              ],
              begin: const Alignment(0.36, 0.27),
              end: const Alignment(0.58, 0.85),
            ),
            boxShadow: const [
              BoxShadow(
                color: ColorsManager.lighterBlack,
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
              BoxShadow(
                color: ColorsManager.lighterBlack,
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
