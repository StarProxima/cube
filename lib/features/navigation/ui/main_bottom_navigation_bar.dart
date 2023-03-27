import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_items.dart';

class MainBottomNavigationBar extends ConsumerStatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  ConsumerState<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState
    extends ConsumerState<MainBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final items = ref.watch(navigationPageItems);
    final type = ref.watch(navigationPageSelectedItemType);
    return BottomNavigationBar(
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedLabelStyle: context.textStyles.smallLabel,
      type: BottomNavigationBarType.shifting,
      backgroundColor: context.colors.text,
      currentIndex: type.index,
      onTap: (index) => ref
          .read(navigationPageSelectedItemType.notifier)
          .state = items[index].type,
      items: items,
    );
  }
}
