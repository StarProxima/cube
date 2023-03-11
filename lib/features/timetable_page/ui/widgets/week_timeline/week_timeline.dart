import 'package:cube_system/features/timetable_page/state_holders/timetable_page_selected_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../state_holders/current_date.dart';
import 'components/custom_page_view_scroll_physics.dart';
import 'components/week_timeline_day_button.dart';

class WeekTimeline extends ConsumerStatefulWidget {
  const WeekTimeline({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WeekTimelineState();
}

class _WeekTimelineState extends ConsumerState<WeekTimeline> {
  static const initialPage = 1000;
  final controller = PageController(initialPage: initialPage);

  @override
  Widget build(BuildContext context) {
    final weekDay = ref.watch(currentDate).weekday - 1;

    ref.listen<DateTime>(
      timetablePageSelectedDate,
      (previous, next) {
        // var offsetDay = Duration(
        //   days: next.inDays + weekDay,
        // ).inDays;

        // if (offsetDay >= 0) {
        //   offsetDay = offsetDay ~/ 7;
        // } else {
        //   offsetDay = (offsetDay + 1) ~/ 7 - 1;
        // }

        // controller.animateToPage(
        //   controller.initialPage + offsetDay,
        //   duration: const Duration(milliseconds: 500),
        //   curve: Curves.easeInOut,
        // );
      },
    );

    final date = ref.watch(currentDate);

    return SizedBox(
      height: 76,
      child: PageView.builder(
        physics: const CustomPageViewScrollPhysics(),
        controller: controller,
        itemCount: initialPage * 2,
        itemBuilder: (BuildContext context, int pageNumber) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                for (int dayNumber = 0; dayNumber < 7; dayNumber++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 12,
                      ),
                      child: WeekTimelineDayButton(
                        date: date.add(
                          Duration(
                            days: 7 * (pageNumber - controller.initialPage) +
                                (dayNumber - weekDay),
                          ),
                        ),
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
