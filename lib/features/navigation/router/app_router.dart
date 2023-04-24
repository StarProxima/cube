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

import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
import 'package:cube_system/features/navigation/router/app_go_router_observer.dart';

import 'package:cube_system/features/navigation/router/analytics_go_router_observer.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>((ref) {
  final landingPassed = ref.read(appSettingsStateHolder).landingPassed;
  final initialLocation = landingPassed ? '/timetable' : '/landing';

  List<NavigatorObserver> getObservers() {
    return [
      AppGoRouterObserver(
        mainNavigationBarManager: ref.read(mainNavigationBarManager),
      ),
      AnalyticsGoRouterObserver(),
    ];
  }

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: initialLocation,
    observers: getObservers(),
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => initialLocation,
      ),
      GoRoute(
        path: '/landing',
        pageBuilder: (context, state) => AppCustomTransitionPage(
          state: state,
          child: const LandingPage(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) => AppCustomTransitionPage(
          state: state,
          child: NavigationBarWrapper(child),
        ),
        observers: getObservers(),
        routes: [
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) => AppCustomTransitionPage(
              state: state,
              child: const UnimplementedFeatureEventPage(
                title: 'Скоро здесь будут поиск и ваши расписания',
              ),
            ),
          ),
          GoRoute(
            path: '/notes',
            pageBuilder: (context, state) => AppCustomTransitionPage(
              state: state,
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
                state: state,
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
              state: state,
              child: const TimetablePage(),
            ),
            routes: [
              GoRoute(
                name: 'timetable/search',
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
              state: state,
              child: const UnimplementedFeatureEventPage(
                title: 'Скоро здесь будет профиль',
              ),
            ),
          ),
          GoRoute(
            path: '/settings',
            pageBuilder: (context, state) => AppCustomTransitionPage(
              state: state,
              child: const SettingsPage(),
            ),
          ),
        ],
      ),
    ],
  );
});
