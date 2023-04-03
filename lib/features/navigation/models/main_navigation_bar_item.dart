import 'package:flutter/cupertino.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

class MainNavigationBarItem extends BottomNavigationBarItem {
  final MainNavigationBarItemType type;

  MainNavigationBarItem({
    required this.type,
    required super.icon,
  }) : super(
          label: type.label,
        );
}
