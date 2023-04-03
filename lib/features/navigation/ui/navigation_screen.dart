// import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
// import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_selected_item_type.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:cube_system/features/navigation/ui/main_navigation_bar.dart';

// import 'package:cube_system/features/navigation/providers/navigation_screen_selected_page.dart';

// class NavigationScreen extends ConsumerWidget {
//   const NavigationScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final navigationBarManager = ref.watch(mainNavigationBarManager);
//     final selectedType = ref.read(mainNavigationBarSelectedItemType);
//     navigationBarManager.selectItem(selectedType);

//     return Consumer(
//       builder: (context, ref, child) {
//         final selectedPage = ref.watch(navigationScreenSelectedPage);
//         return Scaffold(
//           body: selectedPage,
//           bottomNavigationBar: const MainNavigationBar(),
//         );
//       },
//     );
//   }
// }
