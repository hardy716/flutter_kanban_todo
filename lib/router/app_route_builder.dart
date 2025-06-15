import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../module/common/view/splash_screen.dart';
import '../module/common/view/error_screen.dart';
import '../module/auth/view/login_screen.dart';
import '../module/subjects/view/subject_screen.dart';
import '../module/tasks/view/task_screen.dart';
import '../module/statistics/view/statistic_screen.dart';
import 'app_route_definitions.dart';

final Map<AppRoute, Page<dynamic> Function(BuildContext, GoRouterState)> routeBuilders = {
  AppRoute.splash: (context, state) => _buildRoute(context: context, state: state, child: SplashScreen()),
  AppRoute.login: (context, state) => _buildRoute(context: context, state: state, child: LoginScreen()),
  AppRoute.subjects: (context, state) => _buildRoute(context: context, state: state, child: SubjectScreen()),
  AppRoute.tasks: (context, state) => _buildRoute(context: context, state: state, child: TaskScreen()),
  AppRoute.statistics: (context, state) => _buildRoute(context: context, state: state, child: StatisticScreen()),
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

    return (context, state) => _buildRoute(context: context, state: state, child: ErrorScreen());
  }
}
