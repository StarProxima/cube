import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date_time_state_holders.dart';

final selectedDate = StateProvider<DateTime>((ref) {
  return ref.read(currentDate);
});