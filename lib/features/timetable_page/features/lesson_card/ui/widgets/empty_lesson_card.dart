import 'package:cube_system/source/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/styles/app_theme_state_holders/app_lesson_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/lesson_timings.dart';

class EmptyLessonCard extends ConsumerWidget {
  final int number;
  const EmptyLessonCard({required this.number, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timings = ref.read(lessonTimings)[number]!;

    final timingsStr =
        '${timings.start.format(context)} - ${timings.end.format(context)}';

    final color = ref.watch(appLessonColors).ksrs;
    final fadedColor = color?.withOpacity(0.5);

    return Container(
      height: 36,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: context.colors.card,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 1),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            width: 6,
            decoration: BoxDecoration(
              color: fadedColor,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 1.cutNumberEdgesZeroToOne(),
                child: Container(
                  width: 6,
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            height: 22,
            width: 22,
            padding: const EdgeInsets.only(
              left: 0.75,
              bottom: 0.75,
            ),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: context.textStyles.label.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            timingsStr,
            style: context.textStyles.smallLabel.copyWith(
              color: context.colors.subduedText,
            ),
          ),
        ],
      ),
    );
  }
}
