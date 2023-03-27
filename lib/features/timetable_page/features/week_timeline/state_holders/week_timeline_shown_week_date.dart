import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';

final weekTimelineShownWeekDate = StateProvider<DateTime>((ref) {
  return ref.read(currentDate);
});
