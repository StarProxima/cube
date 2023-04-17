import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/models/week_timeline_offset_back_button_direction.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/managers/week_timeline_manager.dart';

final weekTimelineOffsetBackButtonDirectionProvider =
    Provider<WeekTimelineOffsetBackButtonDirection>((ref) {
  final manager = ref.read(weekTimelineManager);

  final weekDate = ref.watch(weekTimelineShownWeekDate);

  final offsetInWeeks = manager.calculateWeekOffset(weekDate);

  if (offsetInWeeks < 0) return WeekTimelineOffsetBackButtonDirection.forward;

  if (offsetInWeeks > 0) return WeekTimelineOffsetBackButtonDirection.back;

  return WeekTimelineOffsetBackButtonDirection.stay;
});
