import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';

class TimetablePageDay extends ConsumerWidget {
  final DateTime date;

  const TimetablePageDay({required this.date, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessons = ref.watch(timetablePageDayLessons(date));

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      itemCount: lessons.length,
      itemBuilder: (context, index) => LessonCard(lessons[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
    );
  }
}
