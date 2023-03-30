import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/navigation/ui/main_navigation_bar.dart';

class NavigationBarWrapper extends ConsumerWidget {
  final Widget child;

  const NavigationBarWrapper(this.child, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const MainNavigationBar(),
    );
  }
}
