import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_selected_item_type.dart';

import 'package:cube_system/features/navigation/providers/main_navigation_bar_items.dart';

import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
import 'package:go_router/go_router.dart';

class MainNavigationBar extends ConsumerStatefulWidget {
  const MainNavigationBar({super.key});

  @override
  ConsumerState<MainNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends ConsumerState<MainNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(mainNavigationBarManager);
    final items = ref.watch(mainNavigationBarItems);
    final type = ref.watch(mainNavigationBarSelectedItemType);

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: context.colors.background,
      ),
      // TODO: DecoratedBox is not working here. Why?
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border(
            top: BorderSide(
              color: context.colors.subduedBorder,
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: context.colors.primary,
          unselectedItemColor: context.colors.text,
          selectedLabelStyle: context.textStyles.smallLabel,
          unselectedLabelStyle: context.textStyles.smallSubTitle,
          // type: BottomNavigationBarType.shifting,
          currentIndex: type.index,
          onTap: (index) {
            manager.selectItem(items[index].type);
            context.go('/${items[index].type.name}');
          },
          items: items,
        ),
      ),
    );
  }
}
