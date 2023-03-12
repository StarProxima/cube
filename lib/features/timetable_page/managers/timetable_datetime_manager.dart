import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';

final timetableDatetimeManager = Provider<TimetableDatetimeManager>((ref) {
  return TimetableDatetimeManager(
    dateTime: ref.watch(currentDateTime.notifier),
    dateTimeTimer: ref.watch(currentDateTimeTimer.notifier),
  );
});

class TimetableDatetimeManager {
  final StateController<DateTime> dateTime;
  final StateController<Timer?> dateTimeTimer;

  TimetableDatetimeManager({
    required this.dateTime,
    required this.dateTimeTimer,
  });

  void setCurrentDateTimeTimer() async {
    await Future(() {});

    dateTimeTimer.state?.cancel();
    dateTimeTimer.state = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        dateTime.state = DateTime.now();
      },
    );
  }
}
