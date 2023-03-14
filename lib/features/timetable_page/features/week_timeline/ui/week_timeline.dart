import 'package:cube_system/features/timetable_page/features/week_timeline/managers/week_timeline_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/features/week_timeline/ui/widgets/custom_page_view_scroll_physics.dart';
import 'package:cube_system/features/timetable_page/features/week_timeline/ui/widgets/week_timeline_day_button.dart';

class WeekTimeline extends ConsumerStatefulWidget {
  const WeekTimeline({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeekTimelineState();
}

class _WeekTimelineState extends ConsumerState<WeekTimeline> {
  final initialPage = 1000;
  late final controller = PageController(initialPage: initialPage);

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(weekTimelineManager);

    final date = ref.watch(currentDate);
    final weekDay = date.weekday - 1;

    ref.listen(
      selectedDate,
      (previous, next) {
        final offsetInWeeks = manager.calculateWeekOffset(next);

        controller.animateToPage(
          controller.initialPage + offsetInWeeks,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );

    DateTime getDateByDayAndWeek(int dayIndex, int weekIndex) => date.add(
          Duration(
            days: 7 * (weekIndex - initialPage) + (dayIndex - weekDay),
          ),
        );

    return SizedBox(
      height: 60,
      child: PageView.builder(
        physics: const CustomPageViewScrollPhysics(),
        controller: controller,
        itemCount: initialPage * 2,
        onPageChanged: (weekIndex) =>
            manager.setShownWeekDate(getDateByDayAndWeek(weekDay, weekIndex)),
        itemBuilder: (BuildContext context, int pageNumber) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                for (int dayNumber = 0; dayNumber < 7; dayNumber++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 2,
                      ),
                      child: WeekTimelineDayButton(
                        date: getDateByDayAndWeek(dayNumber, pageNumber),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
