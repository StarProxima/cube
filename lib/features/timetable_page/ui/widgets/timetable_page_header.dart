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

    final timetable = ref.watch(selectedTimetable);

    final date = ref.watch(currentDate);
    final weekDate = ref.watch(weekTimelineShownWeekDate);

    final dateFormat = date.year == weekDate.year
        ? DateFormat('MMMM', 'ru')
        : DateFormat('MMMM', 'ru').addPattern('yyyy');

    final weekOffsetButton =
        ref.watch(weekTimelineOffsetBackButtonDirectionProvider);

    final String weekLabel;

    if (weekDate.weekNumber % 2 == 0) {
      weekLabel = 'Числитель';
    } else {
      weekLabel = 'Знаменатель';
    }

    return SizedBox(
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 4, top: 4),
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
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        timetable?.label ?? 'Расписание',
                        style: context.textStyles.largeTitle,
                      ),
                      const SizedBox(height: 1),
                      Text(
                        timetable?.type.label ?? 'Не выбрано',
                        style: context.textStyles.smallSubTitle.copyWith(
                          color: context.colors.subduedText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(left: 4, top: 4, right: 4),
              child: InkWell(
                onTap: () {},
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dateFormat.format(weekDate).capitalize(),
                      style: context.textStyles.label,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 2),
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
              ),
            ),
          ),
          Expanded(
            flex: 10,
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
