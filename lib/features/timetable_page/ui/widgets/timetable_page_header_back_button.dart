import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/models/week_timeline_offset_back_button_direction.dart';
import 'package:cube_system/features/timetable_page/features/week_timeline/providers/week_timeline_offset_back_button_direction_provider.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';

class TimetablePageHeaderBackButton extends ConsumerWidget {
  const TimetablePageHeaderBackButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);

    final date = ref.watch(currentDate);

    final weekOffsetButton =
        ref.watch(weekTimelineOffsetBackButtonDirectionProvider);

    return weekOffsetButton != WeekTimelineOffsetBackButtonDirection.stay
        ? InkWell(
            onTap: () => manager.selectDate(date.add(Duration.zero)),
            borderRadius: const BorderRadius.all(Radius.circular(99)),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Icon(
                weekOffsetButton ==
                        WeekTimelineOffsetBackButtonDirection.forward
                    ? Icons.arrow_forward_ios_rounded
                    : Icons.arrow_back_ios_new_rounded,
                size: 20,
              ),
            ),
          )
        : const SizedBox();
  }
}
