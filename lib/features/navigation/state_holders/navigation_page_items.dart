import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

import 'package:cube_system/features/navigation/managers/main_bottom_navigation_bar_manager.dart';

class AppBottomNavigationBarItem extends BottomNavigationBarItem {
  final AppBottomNavigationBarItemType type;
  final RiveAnimation rive;

  AppBottomNavigationBarItem({
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

final navigationPageItems = Provider<List<AppBottomNavigationBarItem>>((ref) {
  final manager = ref.watch(mainBottomNavigationBarManager);
  return manager.generateAppBottomNavigationBarItems();
});
