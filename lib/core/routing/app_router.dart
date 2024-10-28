import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:ecommerce/features/onboarding/onboard_page.dart';
import 'package:ecommerce/features/shop/presentation/screens/shop.dart';
import 'package:ecommerce/features/sign_up/presentation/screens/sign_up.dart';
import 'package:ecommerce/features/signin/singnin_page.dart';
import 'package:go_router/go_router.dart';

abstract class Approute {
  static final router = GoRouter(
    routes: [
      //initial route
      GoRoute(
        path: '/',
        builder: (context, state) => const Onboarding(),
      ),

      GoRoute(
        path: Routes.kButtomNavigationBar,
        builder: (context, state) => const BottomNavigationBarScreen(),
      ),
      GoRoute(
        path: Routes.kShopPage,
        builder: (context, state) => const ShopScreen(),
      ),
      GoRoute(
        path: Routes.kSignUp,
        builder: (context, state) => const SignUp(),
      ),

      GoRoute(
        path: Routes.kSignIn,
        builder: (context, state) => const SingninPage(),
      ),
    ],
  );
}
