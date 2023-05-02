import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_back_button.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_date.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_timetable_info.dart';
import 'package:cube_system/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/providers/week_timeline_offset_back_button_direction_provider.dart';

class TimetablePageHeader extends ConsumerWidget {
  const TimetablePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);

    final date = ref.watch(currentDate);
    final weekDate = ref.watch(weekTimelineShownWeekDate);

    final weekOffsetButton =
        ref.watch(weekTimelineOffsetBackButtonDirectionProvider);

    final String weekLabel;

    if (weekDate.weekNumber % 2 == 1) {
      weekLabel = 'Числитель';
    } else {
      weekLabel = 'Знаменатель';
    }

    return SizedBox(
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 4),
              child: TimetablePageHeaderTimetableInfo(),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.only(left: 4, top: 4, right: 4),
              child: TimetablePageHeaderDate(),
            ),
          ),
          Expanded(
            flex: 10,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: TimetablePageHeaderBackButton(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
