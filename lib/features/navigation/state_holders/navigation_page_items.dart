import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/features/navigation/ui/widgets/main_navigation_bar_item.dart';

final navigationPageItems = Provider<List<MainNavigationBarItem>>((ref) {
  final manager = ref.watch(mainNavigationBarManager);
  return [
    for (final type in AppBottomNavigationBarItemType.values)
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
