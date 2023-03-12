import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';

final timetableDatetimeManager = Provider<TimetableDatetimeManager>((ref) {
  return TimetableDatetimeManager(
    dateTimeLazy: ref.watch(currentDateTimeLazy.notifier),
    dateTimeLazyTimer: ref.watch(currentDateTimeLazyTimer.notifier),
    dateTimeQuick: ref.watch(currentDateTimeQuick.notifier),
    dateTimeQuickTimer: ref.watch(currentDateTimeQuickTimer.notifier),
  );
});

class TimetableDatetimeManager {
  final StateController<DateTime> dateTimeLazy;
  final StateController<Timer?> dateTimeLazyTimer;
  final StateController<DateTime> dateTimeQuick;
  final StateController<Timer?> dateTimeQuickTimer;

  TimetableDatetimeManager({
    required this.dateTimeLazy,
    required this.dateTimeLazyTimer,
    required this.dateTimeQuick,
    required this.dateTimeQuickTimer,
  });

  void setCurrentDateLazyTimeTimer() async {
    await Future(() {});

    dateTimeLazyTimer.state?.cancel();
    dateTimeLazyTimer.state = Timer.periodic(
      const Duration(seconds: 10),
      (timer) {
        dateTimeLazy.state = DateTime.now();
      },
    );
  }

  void setCurrentDateQuickTimeTimer() async {
    await Future(() {});

    dateTimeQuickTimer.state?.cancel();
    dateTimeQuickTimer.state = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        dateTimeQuick.state = DateTime.now();
      },
    );
  }
}
