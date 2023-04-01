import 'package:cube_system/features/landing_page/ui/landing_page.dart';
import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:cube_system/features/timetable_search_page/ui/timetable_search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/features/navigation/ui/navigation_bar_wrapper.dart';

import 'package:cube_system/ui/widgets/event_pages/unimplemented_feature_event_page.dart';

import 'package:cube_system/features/navigation/router/app_custom_transition_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/landing',
  routes: [
    GoRoute(
      path: '/landing',
      redirect: (context, state) {
        return null;

        // return '/timetable';
      },
      pageBuilder: (context, state) => CupertinoPage(
        key: state.pageKey,
        child: const LandingPage(),
      ),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      // builder: (BuildContext context, GoRouterState state, Widget child) {
      //   final length = '/'.allMatches(state.fullpath!).length;
      //   return length < 2 ? NavigationBarWrapper(child) : child;
      // },
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return NavigationBarWrapper(child);
      },
      // pageBuilder: (context, state, child) => AppCustomTransitionPage(
      //   key: state.pageKey,
      //   child: NavigationBarWrapper(child),
      // ),

      routes: [
        GoRoute(
          path: '/search',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: 'Скоро здесь будет поиск',
            ),
          ),
        ),
        GoRoute(
          path: '/notes',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: 'Скоро здесь будут заметки',
            ),
          ),
        ),
        GoRoute(
          path: '/timetable',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const TimetablePage(),
          ),
          routes: [
            GoRoute(
              path: 'search',
              pageBuilder: (context, state) => CupertinoPage(
                key: state.pageKey,
                child: const TimetableSearchPage(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: 'Скоро здесь будет профиль',
            ),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => AppCustomTransitionPage(
            key: state.pageKey,
            child: const UnimplementedFeatureEventPage(
              title: 'Скоро здесь будут настройки',
            ),
          ),
        ),
      ],
    ),
  ],
);
