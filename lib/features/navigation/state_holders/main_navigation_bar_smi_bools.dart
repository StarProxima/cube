import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

final mainNavigationBarSmiBools =
    StateProvider<Map<MainNavigationBarItemType, SMIBool>>((ref) {
  return {};
});
