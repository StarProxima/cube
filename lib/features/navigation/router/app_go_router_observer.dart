import 'package:cube_system/core/extensions.dart';
import 'package:flutter/cupertino.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';
import 'package:cube_system/features/navigation/router/app_custom_transition_page.dart';

class AppGoRouterObserver extends NavigatorObserver {
  final MainNavigationBarManager mainNavigationBarManager;

  AppGoRouterObserver({
    required this.mainNavigationBarManager,
  });

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final page = route.settings;
    if (page is AppCustomTransitionPage) {
      final path = page.state.fullpath;

      // TODO: refactor this shit
      if ((path?.length ?? 0) <= 1) return;

      final path2 = path?.substring(1);

      final name = path2?.substring(0, path2.indexOfOrNull('/'));
      final type = MainNavigationBarItemType.tryParse(name);
      if (type != null) {
        mainNavigationBarManager.selectItem(type);
      }
    }
  }
}
