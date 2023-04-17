import 'package:hive_flutter/hive_flutter.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings_view_state.dart';
import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';
import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';
import 'package:cube_system/models/adapters/time_of_day_adapter.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';
import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:cube_system/models/timetable_day/timetable_day_event.dart';
import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

abstract class HiveInitializer {
  static void _registerAdapters(List<TypeAdapter> adapters) {
    for (final adapter in adapters) {
      Hive.registerAdapter(adapter);
    }
  }

  static void init() {
    Hive.initFlutter();

    _registerAdapters([
      AppLessonColorsModeAdapter(),
      AppSettingsAdapter(),
      LessonCardLessonTypePositionAdapter(),
      LessonCardRecessDisplayConditionAdapter(),
      TimeOfDayAdapter(),
      LessonAdapter(),
      LessonFullTimingsAdapter(),
      LessonTimingsAdapter(),
      LessonTypeAdapter(),
      TimetableTypeAdapter(),
      TimetableDayEventAdapter(),
      TimetableDayEventTypeAdapter(),
    ]);
  }
}
