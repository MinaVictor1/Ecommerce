import 'package:ecommerce/features/admin/presentation/dashboard/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';

class GetProductNumber extends StatelessWidget {
  const GetProductNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DashBoardContainer(
      title: 'Products',
      icon: 'assets/logo/products_drawer.png',
      num: '10',
      isLoading: false,
    );
  }
}
