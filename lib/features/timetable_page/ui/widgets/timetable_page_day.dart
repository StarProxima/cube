import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
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

      case TimetableDayEventType.welcome:
      case TimetableDayEventType.notSelected:
        return const NotSelectedEventPage();

      case TimetableDayEventType.holiday:
      case TimetableDayEventType.weekend:
        return const WeekendEventPage();

      case TimetableDayEventType.error:
        return NoConnectionEventPage(
          onTap: manager.updateCurrentTimetable,
        );

      case TimetableDayEventType.lessons:
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
      itemCount: lessons.length,
      itemBuilder: (context, index) => LessonCard(lessons[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
