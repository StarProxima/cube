import 'package:cube_system/core/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';

import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

class TimetablePageHeaderDate extends ConsumerWidget {
  const TimetablePageHeaderDate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(currentDate);
    final weekDate = ref.watch(weekTimelineShownWeekDate);

    final String weekLabel;

    if (weekDate.weekNumber % 2 == 1) {
      weekLabel = 'Числитель';
    } else {
      weekLabel = 'Знаменатель';
    }

    final isGroup = ref.watch(
      selectedTimetableStateHolder
          .select((value) => value?.type.isGroup ?? false),
    );

    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('MMMM', 'ru').format(weekDate).capitalize(),
            style: context.textStyles.label,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 1),
          if (date.year != weekDate.year)
            Text(
              DateFormat('yyyy', 'ru').format(weekDate).capitalize(),
              style: context.textStyles.label.copyWith(),
              textAlign: TextAlign.center,
            ),
          if (isGroup)
            Text(
              weekLabel,
              style: context.textStyles.smallSubTitle.copyWith(
                fontSize: 10,
                color: context.colors.subduedText,
              ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
