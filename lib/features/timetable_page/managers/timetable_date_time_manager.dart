import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';

final timetableDatetimeManager = Provider<TimetableDatetimeManager>((ref) {
  return TimetableDatetimeManager(
    dateTimeLazy: ref.watch(currentDateTimeLazy.notifier),
    dateTimeLazyTimer: ref.watch(currentDateTimeLazyTimer.notifier),
    dateTimeLazyDelay: ref.watch(currentDateTimeLazyDelay.notifier),
    dateTimeQuick: ref.watch(currentDateTimeQuick.notifier),
    dateTimeQuickTimer: ref.watch(currentDateTimeQuickTimer.notifier),
    dateTimeQuickDelay: ref.watch(currentDateTimeQuickDelay.notifier),
  );
});

class TimetableDatetimeManager {
  final StateController<DateTime> dateTimeLazy;
  final StateController<Timer?> dateTimeLazyTimer;
  final StateController<Duration> dateTimeLazyDelay;
  final StateController<DateTime> dateTimeQuick;
  final StateController<Timer?> dateTimeQuickTimer;
  final StateController<Duration> dateTimeQuickDelay;

  TimetableDatetimeManager({
    required this.dateTimeLazy,
    required this.dateTimeLazyTimer,
    required this.dateTimeLazyDelay,
    required this.dateTimeQuick,
    required this.dateTimeQuickTimer,
    required this.dateTimeQuickDelay,
  });

  void setTimers() {
    setCurrentDateLazyTimeTimer();
    setCurrentDateQuickTimeTimer();
  }

  void setCurrentDateLazyTimeTimer() async {
    await Future(() {});

    dateTimeLazyTimer.state?.cancel();
    dateTimeLazyTimer.state = Timer.periodic(
      dateTimeLazyDelay.state,
      (timer) {
        dateTimeLazy.state = DateTime.now();
      },
    );
  }

  void setCurrentDateQuickTimeTimer() async {
    await Future(() {});

    dateTimeQuickTimer.state?.cancel();
    dateTimeQuickTimer.state = Timer.periodic(
      dateTimeQuickDelay.state,
      (timer) {
        dateTimeQuick.state = DateTime.now();
      },
    );
  }
}
