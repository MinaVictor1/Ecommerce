import 'package:ecommerce/features/admin/presentation/dashboard/widgets/get_categories_number.dart';
import 'package:ecommerce/features/admin/presentation/dashboard/widgets/get_product_number.dart';
import 'package:ecommerce/features/admin/presentation/dashboard/widgets/get_users_number.dart';
import 'package:flutter/material.dart';

class DashBoardListView extends StatelessWidget {
  const DashBoardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView(
        children: const [
          GetProductNumber(),
          GetCategoriesNumber(),
          GetUsersNumber(),
        ],
      ),
    );
  }
}
