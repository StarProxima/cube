import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/state_holders/app_lesson_colors.dart';
import 'package:cube_system/features/timetable_page/state_holders/lesson_timings.dart';
import 'package:cube_system/core/extensions.dart';

class RecessCard extends ConsumerWidget {
  final int numberStart;
  final int numberEnd;

  const RecessCard({
    super.key,
    required this.numberStart,
    required this.numberEnd,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, _) {
        final color = ref.watch(appLessonColors).recess;

        final timingsStart = ref.watch(lessonTimings)[numberStart]!;
        final timingsEnd = ref.watch(lessonTimings)[numberEnd]!;

        final timingsStr =
            '${timingsStart.start.format(context)} - ${timingsEnd.end.format(context)}';

        final numberStr = numberStart != numberEnd
            ? '$numberStart - $numberEnd'
            : '$numberStart';
        return Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: context.colors.background,
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
                  color: color?.toAppFadedColor(),
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
                padding: const EdgeInsets.only(
                  left: 0.75,
                  top: 0.75,
                ).add(const EdgeInsets.symmetric(horizontal: 8, vertical: 1)),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Text(
                  numberStr,
                  style: context.textStyles.label.copyWith(
                    color: Colors.white,
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
      },
    );
  }
}
