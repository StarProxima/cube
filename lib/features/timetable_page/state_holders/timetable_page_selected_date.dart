import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'current_date.dart';

final timetablePageSelectedDate = StateProvider<DateTime>((ref) {
  return ref.read(currentDate);
});
