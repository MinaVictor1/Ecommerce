import 'package:go_router/go_router.dart';

abstract class Approute {
  static final router = GoRouter(
    routes: [
      //initial route
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashScreen(),
      // ),

      //navigate to home page
      // GoRoute(
      //   path: Routes.kHomePage,
      //   builder: (context, state) => const MyHomePage(),
      // ),
    ],
  );
}