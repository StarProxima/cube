import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/features/navigation/managers/main_navigation_bar_manager.dart';
import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

class ShaderMaskRiveIcon extends ConsumerWidget {
  final MainNavigationBarItemType type;

  const ShaderMaskRiveIcon(this.type, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(mainNavigationBarManager);
    final theme = IconTheme.of(context);
    final color = theme.color!;

    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            color,
            color,
          ],
        ).createShader(bounds);
      },
      child: SizedBox(
        width: 32,
        height: 32,
        child: Assets.rive.icons.rive(
          artboard: type.iconArtboard,
          stateMachines: type.iconStateMachines,
          onInit: (art) => manager.handleRiveOnInit(art, type),
        ),
      ),
    );
  }
}
