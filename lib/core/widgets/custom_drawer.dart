import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildDrawerHeader(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                  title: 'Home',
                  icon: Icons.home,
                  onTap: () {
                    GoRouter.of(context).push(Routes.kButtomNavigationBar);
                  },
                ),
                _buildDrawerItem(
                  title: 'Profile',
                  icon: Icons.person,
                  onTap: () {
                    GoRouter.of(context).push(Routes.kProfile);
                  },
                ),
                _buildDrawerItem(
                  title: 'Orders',
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _buildDrawerItem(
                  title: 'Settings',
                  icon: Icons.settings,
                  onTap: () {
                    GoRouter.of(context).push(Routes.kSetting);
                  },
                ),
                const Divider(thickness: 1.2),
                _buildDrawerItem(
                  title: 'Help Center',
                  icon: Icons.help_outline,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _buildDrawerItem(
                  title: 'Logout',
                  icon: Icons.exit_to_app,
                  textColor: ColorsManager.red,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorsManager.pink, ColorsManager.lighterpink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage:
                AssetImage('assets/images/profile.jpg'), // profile image
          ),
          const SizedBox(height: 10),
          const Text(
            'Androw Yousry',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'androw@gmail.com',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required String title,
    required IconData icon,
    void Function()? onTap,
    Color? textColor,
  }) {
    return ListTile(
      leading: Icon(icon, color: ColorsManager.pink), // icon color
      title: Text(
        title,
        style: TextStyle(
          color: textColor ?? Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: ColorsManager.lighterpink, // color of footer
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'App Version',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Text(
            'v1.0.0',
            style: TextStyle(
                fontSize: 14, color: ColorsManager.pink), // color of version
          ),
        ],
      ),
    );
  }
}
