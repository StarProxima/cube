import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

final navigationScreenPages =
    Provider<Map<MainNavigationBarItemType, Widget>>((ref) {
  return {
    MainNavigationBarItemType.search: const LicensePage(),
    MainNavigationBarItemType.notes: const LicensePage(),
    MainNavigationBarItemType.timetable: const TimetablePage(),
    // MainNavigationBarItemType.tasks: const LicensePage(),
    MainNavigationBarItemType.account: const LicensePage(),
    MainNavigationBarItemType.settings: const LicensePage(),
  };
});
