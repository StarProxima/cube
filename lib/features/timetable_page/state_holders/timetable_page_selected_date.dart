import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';

final timetablePageSelectedDate = StateProvider<DateTime>((ref) {
  return ref.read(currentDate);
});
