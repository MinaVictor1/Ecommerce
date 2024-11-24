import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/features/customer/presentation/GetStarted/presentation/screens/get_started.dart';
import 'package:ecommerce/features/customer/presentation/bottomnavigationbar/bottom_navigation_bar.dart';
import 'package:ecommerce/core/widgets/onboarding/onboard_page.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/shop.dart';
import 'package:ecommerce/features/auth/presentation/sign_up/sign_up.dart';
import 'package:ecommerce/features/auth/presentation/sign_in/sign_in.dart';
import 'package:ecommerce/features/customer/presentation/trending_products/presentation/trending.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static final router = GoRouter(
    routes: [
      //initial route
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoarding(),
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
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: Routes.kProfile,
        builder: (context, state) => const ProfilePage(),
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
        builder: (context, state) => const OnBoarding(),
      ),
    ],
  );
}
