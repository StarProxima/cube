import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

final mainNavigationBarItems = Provider<List<MainNavigationBarItem>>((ref) {
  final manager = ref.watch(mainNavigationBarManager);
  return [
    for (final type in MainNavigationBarItemType.values)
      MainNavigationBarItem(
        type: type,
        rive: Assets.rive.icons.rive(
          artboard: type.iconArtboard,
          stateMachines: type.iconStateMachines,
          onInit: (art) => manager.handleRiveOnInit(art, type),
        ),
      ),
  ];
});
