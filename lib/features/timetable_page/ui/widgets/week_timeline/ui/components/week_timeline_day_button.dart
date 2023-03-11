import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_selected_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../managers/week_timeline_manager.dart';

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
    final isSelectedDate = date == ref.watch(timetablePageSelectedDate);

    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: isCurrentDate ? 2 : 1),
        color: isSelectedDate ? Colors.blueGrey[100] : null,
      ),
      child: InkWell(
        onTap: () => manager.pickSelectedDate(date),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEE', 'ru').format(date),
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              '${date.day}',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
