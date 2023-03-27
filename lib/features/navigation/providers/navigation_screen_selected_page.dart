import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/providers/navigation_screen_pages.dart';
import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_selected_item_type.dart';

final navigationScreenSelectedPage = Provider<Widget>((ref) {
  final pages = ref.watch(navigationScreenPages);
  final selectedType = ref.watch(mainNavigationBarSelectedItemType);
  return pages[selectedType]!;
});
