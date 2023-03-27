import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

final mainNavigationBarSelectedItemType =
    StateProvider<MainNavigationBarItemType>((ref) {
  return MainNavigationBarItemType.timetable;
});
