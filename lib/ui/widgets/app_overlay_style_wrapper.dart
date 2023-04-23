import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/styles/app_colors/app_colors.dart';

class AppOverlayStyleWrapper extends ConsumerWidget {
  final Widget child;
  const AppOverlayStyleWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors.light;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: appColors.background,
        // iOS only
        statusBarBrightness: Brightness.light,
      ),
      child: child,
    );
  }
}
