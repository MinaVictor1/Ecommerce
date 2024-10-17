import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:ecommerce/features/shop/presentation/screens/shop.dart';
import 'package:go_router/go_router.dart';

abstract class Approute {
  static final router = GoRouter(
    routes: [
      //initial route
      GoRoute(
        path: '/',
        builder: (context, state) => const BottomNavigationBarScreen(),
      ),

      // navigate to home page
      GoRoute(
        path: Routes.kShopPage,
        builder: (context, state) => const ShopScreen(),
      ),
    ],
  );
}
