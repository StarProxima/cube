import 'package:cube_system/core/state_notifiers/hive_state_notifier.dart';
import 'package:cube_system/models/app_box_names/app_box_names.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final savedTimetablesStateHolder =
    StateNotifierProvider<SavedTimetablesNotifier, List<TimetableInfo>>((ref) {
  return SavedTimetablesNotifier(
    [],
    boxName: AppBoxNames.savedTimetables,
  );
});

class SavedTimetablesNotifier extends HiveStateNotifier<List<TimetableInfo>> {
  SavedTimetablesNotifier(super.state, {required super.boxName});

  @override
  List<TimetableInfo> deserialize(value) => List<TimetableInfo>.from(value);

  void addTimetable(TimetableInfo timetableInfo) {
    state = [...state, timetableInfo];
  }

  void removeTimetable(TimetableInfo timetableInfo) {
    state = state.where((e) => e.id != timetableInfo.id).toList();
  }
}
