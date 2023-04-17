import 'dart:ui';

import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:cube_system/features/timetable_page/state_holders/lesson_timings.dart';

final lessonConvertor = Provider<LessonConvertor>((ref) {
  return LessonConvertor(
    lessonTimings: ref.watch(lessonTimings.notifier),
  );
});

class LessonConvertor {
  final StateController<Map<int, LessonTimings>> lessonTimings;

  LessonConvertor({
    required this.lessonTimings,
  });

  Lesson lessonByLessonFullNamesInDb({
    required LessonFullNamesInDb lesson,
    int emptyLessonsBefore = 0,
  }) {
    final number = lesson.number;

    final LessonType type;

    bool isEvent = false;

    switch (lesson.type.shortName) {
      case 'ЛК':
        type = LessonType.lecture;
        break;
      case 'ЛР':
        type = LessonType.laboratory;
        break;
      case 'ПР':
        type = LessonType.practice;
        break;
      case 'СМ':
        type = LessonType.seminar;
        break;
      case 'КСРС':
        type = LessonType.ksrs;
        isEvent = true;
        break;
      case 'ДП':
        type = LessonType.additional;
        break;
      default:
        type = LessonType.recess;
        isEvent = true;
        break;
    }

    Color color = Color(
      int.parse(lesson.type.color.substring(1, 7), radix: 16) + 0xFF000000,
    );

    final date = lesson.date;

    final timings = lessonTimings.state[number]!;

    final fullTiminigs = LessonFullTimings(
      start: timings.start,
      end: timings.end,
      startDateTime: date.add(
        Duration(hours: timings.start.hour, minutes: timings.start.minute),
      ),
      endDateTime: date.add(
        Duration(hours: timings.end.hour, minutes: timings.end.minute),
      ),
    );

    final newLesson = Lesson(
      number: lesson.number,
      timings: fullTiminigs,
      type: type,
      typeShortName: lesson.type.shortName,
      disciplineName: lesson.discipline?.name,
      place: lesson.place?.name,
      groupNames: lesson.groupNames,
      teacherNames: lesson.teacherNames,
      isElective: lesson.isElective,
      isRemotely: lesson.isRemotely,
      isEvent: isEvent,
      defaultColor: color,
      emptyLessonsBefore: emptyLessonsBefore,
    );

    return newLesson;
  }
}
