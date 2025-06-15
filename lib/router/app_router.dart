import 'package:flutter/material.dart' show GlobalKey, NavigatorState;

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'app_route_definitions.dart';
import 'app_route_builder.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root-navigator');
  // final shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell-navigator');

  final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoute.login.path,
    // refreshListenable: ,
    // redirect: ,
    routes: [
      GoRoute(path: AppRoute.splash.path, name: AppRoute.splash.name, pageBuilder: AppRoute.splash.builder),
      GoRoute(path: AppRoute.login.path, name: AppRoute.login.name, pageBuilder: AppRoute.login.builder),
      GoRoute(path: AppRoute.subjects.path, name: AppRoute.subjects.name, pageBuilder: AppRoute.subjects.builder),
      GoRoute(path: AppRoute.tasks.path, name: AppRoute.tasks.name, pageBuilder: AppRoute.tasks.builder),
      GoRoute(path: AppRoute.statistics.path, name: AppRoute.statistics.name, pageBuilder: AppRoute.statistics.builder),
    ],
    errorPageBuilder: AppRoute.error.builder,
  );

  ref.onDispose(router.dispose);

  return router;
}
