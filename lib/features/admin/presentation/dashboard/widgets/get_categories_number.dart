import 'package:ecommerce/features/admin/presentation/dashboard/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';

class GetCategoriesNumber extends StatelessWidget {
  const GetCategoriesNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DashBoardContainer(
      title: 'Categories',
      icon: 'assets/logo/categories_drawer.png',
      num: '5',
      isLoading: false,
    );
  }
}
