import 'package:ecommerce/features/GetStarted/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const routeName = '/GetStarted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetStartedViewBody(),
    );
  }
}
