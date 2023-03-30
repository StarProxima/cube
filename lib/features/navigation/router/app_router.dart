import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/features/navigation/ui/navigation_bar_wrapper.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/timetable',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return NavigationBarWrapper(child);
      },
      routes: [
        GoRoute(
          path: '/search',
          builder: (BuildContext context, GoRouterState state) {
            return const LicensePage();
          },
        ),
        GoRoute(
          path: '/notes',
          builder: (BuildContext context, GoRouterState state) {
            return const LicensePage();
          },
        ),
        GoRoute(
          path: '/timetable',
          builder: (BuildContext context, GoRouterState state) {
            return const TimetablePage();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) {
            return const LicensePage();
          },
        ),
        GoRoute(
          path: '/settings',
          builder: (BuildContext context, GoRouterState state) {
            return const LicensePage();
          },
        ),
      ],
    ),
  ],
);
