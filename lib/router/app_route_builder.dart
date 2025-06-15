import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_route_definitions.dart';

final Map<AppRoute, Page<dynamic> Function(BuildContext, GoRouterState)>
routeBuilders = {
  AppRoute.splash:
      (context, state) => _buildRoute(
    context: context,
    state: state,
    child: Placeholder(), // Splash
  ),
  AppRoute.login:
      (context, state) =>
      _buildRoute(context: context, state: state, child: Placeholder()), // Login
};

CustomTransitionPage<dynamic> _buildRoute({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

extension AppRouteBuilder on AppRoute {
  Page<dynamic> Function(BuildContext, GoRouterState) get builder {
    final builder = routeBuilders[this];
    if (builder != null) return builder;

    return (context, state) =>
        _buildRoute(context: context, state: state, child: Placeholder()); // Error
  }
}
