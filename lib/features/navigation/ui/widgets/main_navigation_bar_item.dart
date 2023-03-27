import 'package:cube_system/features/navigation/ui/widgets/shader_mask_rive_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

class MainNavigationBarItem extends BottomNavigationBarItem {
  final AppBottomNavigationBarItemType type;
  final RiveAnimation rive;

  MainNavigationBarItem({
    required this.type,
    required this.rive,
  }) : super(
          label: type.label,
          icon: ShaderMaskRiveIcon(rive),
          tooltip: type.label,
        );
}
