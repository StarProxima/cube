import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings_view_state.dart';
import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';
import 'package:cube_system/features/settings/models/app_theme_mode/app_theme_mode.dart';
import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';
import 'package:cube_system/models/adapters/time_of_day_adapter.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/models/lesson_timings/lesson_full_timings.dart';
import 'package:cube_system/models/lesson_timings/lesson_timings.dart';
import 'package:cube_system/models/lesson_type/lesson_type.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:cube_system/models/timetable_day/timetable_day_event.dart';
import 'package:cube_system/models/timetable_day/timetable_day_type.dart';

import 'package:cube_system/models/adapters/color_adapter.dart';

abstract class HiveInitializer {
  static void _reg<T>(TypeAdapter<T> adapter) => Hive.registerAdapter(adapter);

  static Future<void> init() async {
    await Hive.initFlutter();
    _reg(AppLessonColorsModeAdapter());
    _reg(AppSettingsAdapter());
    _reg(LessonCardLessonTypePositionAdapter());
    _reg(LessonCardRecessDisplayConditionAdapter());
    _reg(TimeOfDayAdapter());
    _reg(LessonAdapter());
    _reg(LessonFullTimingsAdapter());
    _reg(LessonTimingsAdapter());
    _reg(LessonTypeAdapter());
    _reg(TimetableInfoAdapter());
    _reg(TimetableTypeAdapter());
    _reg(TimetableDayEventAdapter());
    _reg(TimetableDayEventTypeAdapter());
    _reg(AppThemeModeAdapter());
    _reg(ColorAdapter());

    await Future.wait([
      Hive.openBox(AppBoxNames.selectedTimetable),
      // Hive.openBox(AppBoxNames.timetablePageLessons),
      // Hive.openBox(AppBoxNames.timetablePageEvents),
    ]);
  }
}
