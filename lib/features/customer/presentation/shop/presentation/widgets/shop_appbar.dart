import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      actions: [
        IconButton(
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/logo/shopIcon.png'),
          ),
          onPressed: () {
            // GoRouter.of(context).push(
            //   Routes.kHomePage,);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
