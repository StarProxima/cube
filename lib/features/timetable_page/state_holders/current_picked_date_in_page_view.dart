import 'package:cube_system/features/timetable_page/state_holders/selected_date.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPickedDateInPageView = StateProvider<DateTime>((ref) {
  return ref.read(selectedDate);
});
