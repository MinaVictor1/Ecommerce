import 'package:flutter/material.dart';

class StylishAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StylishAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const CircleAvatar(
          backgroundImage: AssetImage('assets/logo/listlogo.png'),
        ),
        onPressed: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo/appbarlogo.png',
            height: 30,
          ),
          const SizedBox(width: 8),
          const Text(
            'Stylish',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/logo/userlogo.png'),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
