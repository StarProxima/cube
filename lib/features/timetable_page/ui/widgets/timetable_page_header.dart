import 'package:cube_system/features/timetable_page/features/week_timeline/state_holders/week_timeline_shown_week_date.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:cube_system/core/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/providers/week_timeline_offset_back_button_direction_provider.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/models/week_timeline_offset_back_button_direction.dart';

class TimetablePageHeader extends ConsumerWidget {
  const TimetablePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);

    final timetable = ref.watch(selectedTimetableStateHolder);

    final date = ref.watch(currentDate);
    final weekDate = ref.watch(weekTimelineShownWeekDate);

    final weekOffsetButton =
        ref.watch(weekTimelineOffsetBackButtonDirectionProvider);

    final labelTextStyle =
        timetable == null || timetable.type == TimetableType.teacher
            ? context.textStyles.label
            : context.textStyles.largeTitle;

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
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: InkWell(
                onTap: () {
                  context.go('/timetable/search');
                },
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            timetable?.label ?? 'Расписание',
                            style: labelTextStyle,
                          ),
                          SizedBox(
                            height: 16,
                            child: Text(
                              String.fromCharCode(
                                Icons.arrow_drop_down_rounded.codePoint,
                              ),
                              style: labelTextStyle.copyWith(
                                fontFamily:
                                    Icons.arrow_drop_down_rounded.fontFamily,
                                package:
                                    Icons.arrow_drop_down_rounded.fontPackage,
                                fontSize: 20,
                                height: 0.95,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                      Text(
                        timetable?.type.label ?? 'Не выбрано',
                        style: context.textStyles.smallSubTitle.copyWith(
                          fontSize: 10,
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
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 4, top: 4, right: 4),
              child: InkWell(
                onTap: () {
                  context.go('/landing');
                },
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      DateFormat('MMMM', 'ru').format(weekDate).capitalize(),
                      style: context.textStyles.label,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 1),
                    if (date.year != weekDate.year)
                      Text(
                        DateFormat('yyyy', 'ru').format(weekDate).capitalize(),
                        style: context.textStyles.label.copyWith(),
                        textAlign: TextAlign.center,
                      ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: weekOffsetButton !=
                            WeekTimelineOffsetBackButtonDirection.stay
                        ? InkWell(
                            onTap: () =>
                                manager.selectDate(date.add(Duration.zero)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(99)),
                            child: Container(
                              padding: const EdgeInsets.all(8),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
