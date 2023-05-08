import 'package:flutter/material.dart';

class AppTooltip extends Tooltip {
  const AppTooltip({
    super.key,
    super.verticalOffset,
    super.waitDuration,
    super.textStyle,
    super.richMessage,
    required super.message,
    required super.child,
  });

  const AppTooltip.long({
    super.key,
    super.verticalOffset,
    Duration? waitDuration,
    super.textStyle,
    super.richMessage,
    required super.message,
    required super.child,
  }) : super(
          waitDuration: waitDuration ?? const Duration(milliseconds: 700),
          triggerMode: TooltipTriggerMode.longPress,
        );
}
