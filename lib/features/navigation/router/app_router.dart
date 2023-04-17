import 'package:cube_system/features/landing_page/ui/landing_page.dart';
import 'package:cube_system/features/settings/ui/settings_page.dart';
import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:cube_system/features/timetable_search_page/ui/timetable_search_page.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/features/navigation/ui/navigation_bar_wrapper.dart';

import 'package:cube_system/ui/widgets/event_pages/unimplemented_feature_event_page.dart';

import 'package:cube_system/features/navigation/router/app_custom_transition_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/timetable',
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => '/landing',
      ),
      GoRoute(
        path: '/landing',
        redirect: (context, state) {
          return null;
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
            path: '/timetable/:type-:id',
            pageBuilder: (context, state) {
              final type = TimetableType.tryParse(state.params['type']);
              final id = int.tryParse(state.params['id'] ?? '');
              final timetable = type != null && id != null
                  ? TimetableInfo(id: id, label: 'test_label_$id', type: type)
                  : null;

              return AppCustomTransitionPage(
                key: state.pageKey,
                child: TimetablePage(timetable: timetable),
              );
            },
          ),
          GoRoute(
            path: '/timetable',
            redirect: (context, state) {
              //TODO: refactor
              // if (state.fullpath == '/timetable') {
              //   final timetable = ref.read(selectedTimetable);
              //   if (timetable != null) {
              //     return '/timetable/${timetable.type.name}-${timetable.id}';
              //   }
              // }
              return null;
            },
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
              child: const SettingsPage(),
            ),
          ),
        ],
      ),
    ],
  );
});
