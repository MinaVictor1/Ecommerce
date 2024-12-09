import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/features/admin/presentation/dashboard/widgets/dashboard_listview.dart';
import 'package:ecommerce/features/admin/presentation/widgets/admin_appbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AdminAppBar(
        title: 'DashBoard',
        isMain: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: DashBoardListView(),
      ),
    );
  }
}
