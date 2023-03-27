import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_selected_item_type.dart';
import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/ui/main_navigation_bar.dart';

class NavigationPage extends ConsumerWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationBarManager = ref.watch(mainNavigationBarManager);
    final selectedType = ref.read(mainNavigationBarSelectedItemType);
    navigationBarManager.selectItem(selectedType);
    return const Scaffold(
      body: TimetablePage(),
      bottomNavigationBar: MainNavigationBar(),
    );
  }
}
