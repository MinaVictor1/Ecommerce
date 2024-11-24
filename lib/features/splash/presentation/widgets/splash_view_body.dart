import 'package:ecommerce/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();

    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset('assets/logo/logo.svg'),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(Routes.kOnboarding);
    });
  }
}
