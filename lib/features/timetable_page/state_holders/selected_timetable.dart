import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/hive_state_notifier.dart';

final selectedTimetableStateHolder =
    StateNotifierProvider<SelectedTimetableNotifier, TimetableInfo?>((ref) {
  return SelectedTimetableNotifier(
    null,
  );
});

class SelectedTimetableNotifier extends HiveStateNotifier<TimetableInfo?>
    with ChangeStateMixin {
  SelectedTimetableNotifier(super.state);

  @override
  get state => super.state;

  @override
  String get boxName => AppBoxNames.selectedTimetable;
}
