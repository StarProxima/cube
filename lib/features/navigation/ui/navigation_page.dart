
import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/ui/main_bottom_navigation_bar.dart';

class NavigationPage extends ConsumerWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: TimetablePage(),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}
