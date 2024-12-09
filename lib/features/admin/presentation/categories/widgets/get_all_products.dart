import 'package:ecommerce/features/admin/presentation/categories/widgets/category_container.dart';
import 'package:flutter/material.dart';

class GetAllProducts extends StatelessWidget {
  const GetAllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CategoryContainer(
          icon: "assets/logo/users_drawer.png",
          isLoading: false,
          isSuccess: true,
          title: "category name",
        );
      },
    );
  }
}
