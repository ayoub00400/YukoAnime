import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutingManager {
  static const String placeHolderScreenPath = '/PlaceHolderScreenPath';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: placeHolderScreenPath,
    debugLogDiagnostics: true,
    routes: [
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
