import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/features/admin/presentation/products/widgets/add_product.dart';
import 'package:ecommerce/features/admin/presentation/products/widgets/products_grid.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_appbar.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AdminAppBar(
        title: 'Products',
        isMain: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
        ),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  AddProduct(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ProductsGrid(),
          ],
        ),
      ),
    );
  }
}
