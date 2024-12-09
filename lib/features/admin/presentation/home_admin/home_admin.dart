import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/features/admin/presentation/dashboard/dashboard_screen.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_appbar.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  Widget page = const DashboardScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      mainScreen: page,
      menuScreen: Builder(
        builder: (context) {
          return MenuAdminScreen(
            onPageChanged: (currentPage) {
              setState(() {
                page = currentPage;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      borderRadius: 24,
      showShadow: true,
      drawerShadowsBackgroundColor: ColorsManager.darkBlue,
      menuBackgroundColor: Colors.white,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({required this.onPageChanged, super.key});
  final void Function(Widget) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AdminAppBar(
        isMain: false,
        backgroundColor: Colors.white,
        title: 'ShipShop',
      ),
      body: Column(
        children: [
          Column(
            children: adminDrawerList(context)
                .map(
                  (e) => ListTile(
                    onTap: () {
                      onPageChanged(e.page);
                    },
                    title: e.title,
                    leading: e.icon,
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: Image.asset("assets/logo/appbarlogo.png"),
          ),
        ],
      ),
    );
  }
}
