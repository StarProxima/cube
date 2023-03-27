import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart' as riv;

class ShaderMaskRiveIcon extends ConsumerWidget {
  final riv.RiveAnimation rive;

  const ShaderMaskRiveIcon(this.rive, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        child: rive,
      ),
    );
  }
}
