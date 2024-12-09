import 'package:ecommerce/core/helper/dialog/custom_dialog.dart';
import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/core/theme/font_weight.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/admin/presentation/categories/add_categories.dart';
import 'package:ecommerce/features/admin/presentation/dashboard/dashboard_screen.dart';
import 'package:ecommerce/features/admin/presentation/products/products.dart';
import 'package:ecommerce/features/admin/presentation/users/user.dart';
import 'package:flutter/material.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    //DashBoard
    DrawerItemModel(
      icon: const Icon(
        Icons.dashboard,
        color: Colors.black,
      ),
      title: Text(
        'DashBoard',
        style: TextStyles.font14WhiteSemiBold.copyWith(color: Colors.black),
      ),
      page: const DashboardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon: const Icon(Icons.category_outlined, color: Colors.black),
      title: Text('Categories',
          style: TextStyles.font14WhiteSemiBold.copyWith(color: Colors.black)),
      page: const CategoriesScreen(),
    ),

    //Product
    DrawerItemModel(
      icon: const Icon(
        Icons.production_quantity_limits,
        color: Colors.black,
      ),
      title: Text('Products',
          style: TextStyles.font14WhiteSemiBold.copyWith(color: Colors.black)),
      page: const ProductsScreen(),
    ),
    //Users
    DrawerItemModel(
      icon: const Icon(
        Icons.people_alt_rounded,
        color: Colors.black,
      ),
      title: Text('Users',
          style: TextStyles.font14WhiteSemiBold.copyWith(color: Colors.black)),
      page: const UsersScreen(),
    ),
    //Notifications
    DrawerItemModel(
        icon: const Icon(
          Icons.notifications_active,
          color: Colors.black,
        ),
        title: Text('Notifications',
            style:
                TextStyles.font14WhiteSemiBold.copyWith(color: Colors.black)),
        page: const Text("data")
        //  AddNotification(),
        ),
    DrawerItemModel(
        icon: const Icon(
          Icons.exit_to_app,
          color: Colors.black,
        ),
        title: GestureDetector(
          onTap: () {
            CustomDialog.twoButtonDialog(
              context: context,
              textBody: 'Do you want log out?',
              textButton1: 'Yes',
              textButton2: 'No',
              isLoading: false,
              onPressed: () async {
                final navigator = Navigator.of(context);

                await navigator.pushNamedAndRemoveUntil(
                  Routes.kSignIn,
                  (route) => false,
                );
              },
            );
          },
          child: const Text(
            'Logout',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeightHelper.bold,
              fontSize: 17,
            ),
          ),
        ),
        page: const Text("data")
        //  const UsersScreen(),
        ),
  ];
}

class DrawerItemModel {
  DrawerItemModel({
    required this.icon,
    required this.title,
    required this.page,
  });

  final Icon icon;
  final Widget title;
  final Widget page;
}
