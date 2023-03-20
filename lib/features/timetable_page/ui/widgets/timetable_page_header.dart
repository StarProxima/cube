import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';
import 'package:cube_system/source/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/providers/week_timeline_offset_back_button_direction_provider.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/models/week_timeline_offset_back_button_direction.dart';

import 'package:cube_system/features/timetable_search_page/ui/timetable_search_page.dart';

class TimetablePageHeader extends ConsumerWidget {
  const TimetablePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);

    final timetableLabel =
        ref.watch(selectedTimetable.select((value) => value?.label)) ?? '';

    final date = ref.watch(currentDate);
    final weekDate = ref.watch(weekTimelineShownWeekDate);

    final dateFormat = date.year == weekDate.year
        ? DateFormat('MMMM', 'ru')
        : DateFormat('MMMM', 'ru').addPattern('yyyy');

    final weekOffsetButton =
        ref.watch(weekTimelineOffsetBackButtonDirectionProvider);

    return SizedBox(
      height: 53,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return const TimetableSearchPage();
                      },
                    ),
                  );
                },
                borderRadius: const BorderRadius.all(Radius.circular(99)),
                child: Center(
                  child: Text(
                    timetableLabel,
                    style: context.textStyles.largeTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(Radius.circular(99)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    dateFormat.format(weekDate).capitalize(),
                    style: context.textStyles.label,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: weekOffsetButton !=
                        WeekTimelineOffsetBackButtonDirection.stay
                    ? InkWell(
                        onTap: () =>
                            manager.selectDate(date.add(Duration.zero)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(99)),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            weekOffsetButton ==
                                    WeekTimelineOffsetBackButtonDirection
                                        .forward
                                ? Icons.arrow_forward_ios_rounded
                                : Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          )
        ],
      ),
    );
  }
}
