import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/models/week_timeline_offset_back_button_direction.dart';

final weekTimelineOffsetBackButtonDirectionProvider =
    Provider<WeekTimelineOffsetBackButtonDirection>((ref) {
  final date = ref.watch(currentDate);
  final weekDate = ref.watch(weekTimelineShownWeekDate);

  final difference = weekDate.difference(date).inDays;

  final offsetFromStartWeekInDays =
      Duration(days: date.weekday - 1 + difference).inDays;

  final showBackButton =
      offsetFromStartWeekInDays < 0 || offsetFromStartWeekInDays >= 7;

  if (!showBackButton) return WeekTimelineOffsetBackButtonDirection.stay;

  if (difference.isNegative) {
    return WeekTimelineOffsetBackButtonDirection.forward;
  } else {
    return WeekTimelineOffsetBackButtonDirection.back;
  }
});
