import 'package:ecommerce/features/admin/presentation/dashboard/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';

class GetUsersNumber extends StatelessWidget {
  const GetUsersNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DashBoardContainer(
      title: 'Users',
      icon: 'assets/logo/users_drawer.png',
      num: "5",
      isLoading: false,
    );
  }
}
