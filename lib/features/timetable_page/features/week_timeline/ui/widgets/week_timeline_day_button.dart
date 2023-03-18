import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/managers/week_timeline_manager.dart';

class WeekTimelineDayButton extends ConsumerWidget {
  final DateTime date;

  const WeekTimelineDayButton({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(weekTimelineManager);

    final isCurrentDate = date == ref.watch(currentDate);
    final isSelectedDate = date == ref.watch(selectedDate);

    final color = isSelectedDate
        ? Colors.blue
        : isCurrentDate
            ? Colors.blue.withOpacity(0.5)
            : null;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: null,
      ),
      child: InkWell(
        onTap: () => manager.pickSelectedDate(date),
        borderRadius: BorderRadius.circular(8),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEE', 'ru').format(date),
              style: context.textStyles.smallLabel.copyWith(
                color: context.colors.subduedText,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: color,
              ),
              child: Text(
                '${date.day}',
                style: context.textStyles.label.copyWith(
                  color: isSelectedDate || isCurrentDate
                      ? context.colors.white
                      : context.colors.text,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
