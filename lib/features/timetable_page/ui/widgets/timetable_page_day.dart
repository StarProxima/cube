import 'package:cube_system/features/timetable_page/state_holders/timetable_page_events.dart';
import 'package:cube_system/models/lesson_event/lesson_event_type.dart';
import 'package:cube_system/widgets/place_holders/error_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

import 'package:cube_system/widgets/place_holders/rest_place_holder.dart';

class TimetablePageDay extends ConsumerWidget {
  final DateTime date;

  const TimetablePageDay({required this.date, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessons = ref.watch(timetablePageDayLessons(date));

    final event = ref.watch(timetablePageDayLessonEvent(date));

    if (event == null || event.type == LessonEventType.loading) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 36),
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    final isKSRS =
        lessons?.where((element) => element.isEvent).isNotEmpty ?? false;
    if (event.type == LessonEventType.weekend || isKSRS) {
      return const RestPlaceHolder();
    }

    if (lessons == null) {
      return const ErrorPlaceHolder();
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
