import 'package:cube_system/features/analytics/logger.dart';
import 'package:flutter/cupertino.dart';

import 'package:cube_system/features/navigation/router/app_custom_transition_page.dart';

class AnalyticsGoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final page = route.settings;
    if (page is AppCustomTransitionPage) {
      final path = page.state.fullpath;

      print('Push: $path');

      if (path == null) return;

      String? previousPath;

      final prevPage = previousRoute?.settings;
      if (prevPage is AppCustomTransitionPage &&
          prevPage.state.fullpath != null) {
        previousPath = prevPage.state.fullpath!;
      }

      logger.route(path: path, previousPath: previousPath);
    }
  }
}
