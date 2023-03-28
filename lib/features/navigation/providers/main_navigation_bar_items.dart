import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

import 'package:cube_system/features/navigation/ui/widgets/shader_mask_rive_icon.dart';

final mainNavigationBarItems = Provider<List<MainNavigationBarItem>>((ref) {
  final manager = ref.watch(mainNavigationBarManager);
  return [
    for (final type in MainNavigationBarItemType.values)
      MainNavigationBarItem(
        type: type,
        icon: ShaderMaskRiveIcon(type),
      ),
  ];
});
