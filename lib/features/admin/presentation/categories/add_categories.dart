import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/add_category.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/get_all_products.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_appbar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AdminAppBar(
        title: 'Add Categories',
        isMain: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: RefreshIndicator(
          onRefresh: () async {},
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    AddCategory(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              GetAllProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
