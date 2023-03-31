import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/features/navigation/ui/navigation_bar_wrapper.dart';

import 'package:cube_system/features/navigation/router/app_custom_transition_page.dart';

import 'package:cube_system/ui/widgets/event_pages/unimplemented_feature_event_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

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
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: '',
            ),
          ),
        ),
        GoRoute(
          path: '/notes',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: '',
            ),
          ),
        ),
        GoRoute(
          path: '/timetable',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const TimetablePage(),
          ),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: '',
            ),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: '',
            ),
          ),
        ),
      ],
    ),
  ],
);
