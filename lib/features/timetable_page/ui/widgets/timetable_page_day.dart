import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/features/timetable_page/ui/event_pages/unavailable_event_page.dart';
import 'package:cube_system/models/timetable_day/timetable_day_type.dart';
import 'package:cube_system/features/timetable_page/ui/event_pages/weekend_event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/features/timetable_page/ui/event_pages/ksrs_event_page.dart';

import 'package:cube_system/features/timetable_page/ui/event_pages/something_went_wrong_event_page.dart';

import 'package:cube_system/ui/widgets/event_pages/no_connection_event_page.dart';

import 'package:cube_system/features/timetable_page/ui/event_pages/not_selected_event_page.dart';

class TimetablePageDay extends ConsumerWidget {
  final DateTime date;

  const TimetablePageDay({required this.date, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);
    final lessons = ref.watch(timetablePageDayLessons(date));

    final event = ref.watch(timetablePageDayLessonEvent(date));

    if (event == null) return const SizedBox();

    if (event.type == TimetableDayEventType.loading) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 36),
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    switch (event.type) {
      case TimetableDayEventType.loading:
        break;

      case TimetableDayEventType.welcome || TimetableDayEventType.notSelected:
        return const NotSelectedEventPage();

      case TimetableDayEventType.holiday || TimetableDayEventType.weekend:
        return const WeekendEventPage();

      case TimetableDayEventType.unavailable:
        return const UnavailableEventEventPage();

      case TimetableDayEventType.error:
        return NoConnectionEventPage(
          onTap: manager.updateCurrentTimetable,
        );

      case TimetableDayEventType.lessons:
        break;
    }

    final isKSRS =
        lessons?.where((element) => element.isEvent).isNotEmpty ?? false;

    if (isKSRS) {
      return const KsrsEventPage();
    }

    if (lessons == null) {
      return const SomethingWentWrongEventPage();
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: lessons.length + 1,
      itemBuilder: (context, index) {
        if (index == lessons.length) {
          return const Padding(
            padding: EdgeInsets.only(top: 9),
            // child: TimetablePageMessageCard(),
            child: SizedBox(),
          );
        }
        final lesson = lessons[index];
        return LessonCard(
          key: ValueKey(lesson),
          lesson,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 11),
    );
  }
}
