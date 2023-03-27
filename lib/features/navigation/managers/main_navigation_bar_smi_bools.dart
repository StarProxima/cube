import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

final mainNavigationBarSmiBools =
    StateProvider<Map<AppBottomNavigationBarItemType, SMIBool>>((ref) {
  return {};
});
