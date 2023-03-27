import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

class _AppBottomNavigationBarItem extends BottomNavigationBarItem {
  final AppBottomNavigationBarItemType type;
  final RiveAnimation rive;

  _AppBottomNavigationBarItem({
    required this.type,
    required this.rive,
  }) : super(
          label: type.label,
          icon: SizedBox(
            width: 32,
            height: 32,
            child: rive,
          ),
          backgroundColor: const Color(0xFF2B2B2B),
        );
}

final navigationPageItems = Provider<List<_AppBottomNavigationBarItem>>((ref) {
  return [
    _AppBottomNavigationBarItem(
      type: AppBottomNavigationBarItemType.notes,
      rive: Assets.rive.icons.rive(
        artboard: "CHAT",
      ),
    ),
    _AppBottomNavigationBarItem(
      type: AppBottomNavigationBarItemType.search,
      rive: Assets.rive.icons.rive(
        artboard: "SEARCH",
      ),
    ),
    _AppBottomNavigationBarItem(
      type: AppBottomNavigationBarItemType.timetable,
      rive: Assets.rive.icons.rive(
        artboard: "TIMER",
      ),
    ),
    _AppBottomNavigationBarItem(
      type: AppBottomNavigationBarItemType.tasks,
      rive: Assets.rive.icons.rive(
        artboard: "BELL",
      ),
    ),
    _AppBottomNavigationBarItem(
      type: AppBottomNavigationBarItemType.account,
      rive: Assets.rive.icons.rive(
        artboard: "USER",
      ),
    ),
  ];
});
