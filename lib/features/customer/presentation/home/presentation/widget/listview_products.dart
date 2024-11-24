import 'package:ecommerce/core/routing/app_router.dart';
import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/product_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                GoRouter.of(context).push(Routes.kShopPage);
              },
              child: const ProductItems());
        },
      ),
    );
  }
}
