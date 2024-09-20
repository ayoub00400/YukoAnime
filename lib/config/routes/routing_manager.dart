import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_project/view/screens/splash/splash.dart';

import '../../view/screens/onboarding/onboarding.dart';

class RoutingManager {
  static const String placeHolderScreenPath = '/PlaceHolderScreenPath';
  static const String splashScreenPath = '/splashScreenPath';
  static const String onboardingScreenPath = '/onboardingScreenPath';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: splashScreenPath,
    debugLogDiagnostics: true,
    routes: [
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
        name: placeHolderScreenPath,
        path: placeHolderScreenPath,
        builder: (context, state) {
          return const Placeholder();
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
