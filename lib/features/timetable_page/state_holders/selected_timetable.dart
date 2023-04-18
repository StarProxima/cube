import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/hive_state_notifier.dart';

import 'package:cube_system/models/app_box_names/app_box_names.dart';

final selectedTimetableStateHolder =
    StateNotifierProvider<SelectedTimetableNotifier, TimetableInfo?>((ref) {
  return SelectedTimetableNotifier(
    null,
    boxName: AppBoxNames.selectedTimetable,
  );
});

class SelectedTimetableNotifier
    extends SingleHiveStateNotifier<TimetableInfo?> {
  SelectedTimetableNotifier(super.state, {required super.boxName});
}
