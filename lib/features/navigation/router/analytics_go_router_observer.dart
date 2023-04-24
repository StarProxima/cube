import 'package:appmetrica_plugin/appmetrica_plugin.dart';
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

      final Map<String, Object> attributes = {};
      attributes['path'] = path;

      final prevPage = previousRoute?.settings;
      if (prevPage is AppCustomTransitionPage &&
          prevPage.state.fullpath != null) {
        attributes['previousPath'] = prevPage.state.fullpath!;
      }

      AppMetrica.reportEventWithMap('routing', attributes);
    }
  }
}
