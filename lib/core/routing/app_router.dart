import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/GetStarted/presentation/screens/get_started.dart';
import 'package:ecommerce/features/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:ecommerce/features/onboarding/onboard_page.dart';
import 'package:ecommerce/features/shop/presentation/screens/shop.dart';
import 'package:ecommerce/features/sign_up/presentation/screens/sign_up.dart';
import 'package:ecommerce/features/signin/singnin_page.dart';
import 'package:ecommerce/features/trending_products/presentation/pages/trending.dart';
import 'package:go_router/go_router.dart';

import '../../features/Profile/Profile_page.dart';

abstract class AppRoute {
  static final router = GoRouter(
    routes: [
      //initial route
      GoRoute(
        path: '/',
        builder: (context, state) => const GetStartedView(),
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
        builder: (context, state) => const SingInPage(),
      ),
      GoRoute(
        path: Routes.kProfile,
        builder: (context, state) => const profilePage(),
      ),
      GoRoute(
        path: Routes.kSplash,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: Routes.kTrending,
        builder: (context, state) => const TrendingScreen(),
      ),
      GoRoute(
        path: Routes.kOnboarding,
        builder: (context, state) => const Onboarding(),
      ),
    ],
  );
}
// Route<dynamic> onGenerateRoute (RouteSettings settings){
//   switch(settings.name){
//
//   }
//
// }
