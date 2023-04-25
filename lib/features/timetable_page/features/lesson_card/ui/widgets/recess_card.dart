import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';
import 'package:cube_system/models/lesson_timings/lesson_date_timings.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/state_holders/app_lesson_colors.dart';
import 'package:cube_system/features/timetable_page/state_holders/lesson_timings.dart';
import 'package:cube_system/core/extensions.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/lesson_time_to_start_progress_value_provider.dart';

class RecessCard extends ConsumerWidget {
  final int startLessonNumber;
  final int endLessonNumber;
  final DateTime dateTime;

  const RecessCard({
    super.key,
    required this.startLessonNumber,
    required this.endLessonNumber,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, _) {
        final color = ref.watch(appLessonColors).recess;

        final startLessonTimings =
            ref.watch(lessonTimings)[startLessonNumber - 1]!;
        final endLessonTimings = ref.watch(lessonTimings)[endLessonNumber + 1]!;

        final timingsStr =
            '${startLessonTimings.end.format(context)} - ${endLessonTimings.start.format(context)}';

        final numberStr = startLessonNumber != endLessonNumber
            ? '$startLessonNumber - $endLessonNumber'
            : '$startLessonNumber';

        final dateTimings = LessonDateTimings(
          startDateTime: dateTime.add(
            Duration(
              hours: startLessonTimings.end.hour,
              minutes: startLessonTimings.end.minute,
            ),
          ),
          endDateTime: dateTime.add(
            Duration(
              hours: endLessonTimings.start.hour,
              minutes: endLessonTimings.start.minute,
            ),
          ),
        );

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
              Consumer(
                builder: (context, ref, _) {
                  final isOnIndicator = ref.watch(
                    appSettingsStateHolder.select(
                      (value) =>
                          value.lessonCardLessonTypePosition.isOnIndicator,
                    ),
                  );
                  final width = isOnIndicator ? 20.0 : 6.0;

                  return Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: color?.toAppFadedColor(),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Consumer(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                            color: color,
                          ),
                        ),
                        builder: (context, ref, child) {
                          final is0 = ref.watch(
                            lessonTimeToEndProgressValueProvider(dateTimings)
                                .select((value) => value == 0),
                          );

                          final value = is0 ? 0 : 1;
                          return FractionallySizedBox(
                            heightFactor: value.cutNumberEdgesZeroToOne(),
                            child: child,
                          );
                        },
                      ),
                    ),
                  );
                },
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
