import 'package:ecommerce/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class Stylish extends StatelessWidget {
  const Stylish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Doc App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
