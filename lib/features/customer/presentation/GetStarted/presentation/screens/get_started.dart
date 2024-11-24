import 'package:ecommerce/features/customer/presentation/GetStarted/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const routeName = '/GetStarted';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GetStartedViewBody(),
    );
  }
}
