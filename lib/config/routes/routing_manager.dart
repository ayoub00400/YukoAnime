import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_project/view/screens/browse/browse.dart';
import 'package:template_project/view/screens/home/home.dart';
import 'package:template_project/view/screens/my_list/my_list.dart';
import 'package:template_project/view/screens/profile/profile.dart';
import 'package:template_project/view/screens/shop/shop.dart';
import 'package:template_project/view/screens/splash/splash.dart';

import '../../view/screens/onboarding/onboarding.dart';

class RoutingManager {
  static const String splashScreenPath = '/splashScreenPath';
  static const String onboardingScreenPath = '/onboardingScreenPath';
  static const String homeScreenPath = '/homeScreenPath';
  static const String profileScreenPath = '/profileScreenPath';
  static const String shopScreenPath = '/shopScreenPath';
  static const String browseScreenPath = '/browseScreenPath';
  static const String myListScreenPath = '/myListScreenPath';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: splashScreenPath,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: myListScreenPath,
        path: myListScreenPath,
        builder: (context, state) {
          return const MyListScreen();
        },
      ),
      GoRoute(
        name: browseScreenPath,
        path: browseScreenPath,
        builder: (context, state) {
          return const BrowseScreen();
        },
      ),
      GoRoute(
        name: shopScreenPath,
        path: shopScreenPath,
        builder: (context, state) {
          return const ShopScreen();
        },
      ),
      GoRoute(
        name: profileScreenPath,
        path: profileScreenPath,
        builder: (context, state) {
          return const ProfileScreen();
        },
      ),
      GoRoute(
        name: splashScreenPath,
        path: splashScreenPath,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: onboardingScreenPath,
        path: onboardingScreenPath,
        builder: (context, state) {
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        name: homeScreenPath,
        path: homeScreenPath,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );

  static void popUntilPath(BuildContext context, String routePath) {
    while (GoRouter.of(context).routerDelegate.currentConfiguration.matches.last.matchedLocation != routePath) {
      debugPrint(GoRouter.of(context).routerDelegate.currentConfiguration.matches.last.matchedLocation);
      if (!context.canPop()) {
        break;
      }
      context.pop();
    }
  }
}
