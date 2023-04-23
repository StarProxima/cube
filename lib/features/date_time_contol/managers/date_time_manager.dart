import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_state_holders.dart';

import 'package:cube_system/features/date_time_contol/state_holders/current_date_time_timer_state_holders.dart';

import 'package:cube_system/features/date_time_contol/models/date_time_bounds.dart';

final dateTimeManager = Provider<DateTimeManager>((ref) {
  return DateTimeManager(
    dateTimeLazy: ref.watch(currentDateTimeLazy.notifier),
    dateTimeLazyTimer: ref.watch(currentDateTimeLazyTimer.notifier),
    dateTimeLazyDelay: ref.watch(currentDateTimeLazyTimerDelay.notifier),
    dateTimeQuick: ref.watch(currentDateTimeQuick.notifier),
    dateTimeQuickTimer: ref.watch(currentDateTimeQuickTimer.notifier),
    dateTimeQuickDelay: ref.watch(currentDateTimeQuickTimerDelay.notifier),
    currentDate: ref.watch(currentDate.notifier),
  );
});

class DateTimeManager {
  final StateController<DateTime> dateTimeLazy;
  final StateController<Timer?> dateTimeLazyTimer;
  final StateController<Duration> dateTimeLazyDelay;
  final StateController<DateTime> dateTimeQuick;
  final StateController<Timer?> dateTimeQuickTimer;
  final StateController<Duration> dateTimeQuickDelay;
  final StateController<DateTime> currentDate;

  DateTimeManager({
    required this.dateTimeLazy,
    required this.dateTimeLazyTimer,
    required this.dateTimeLazyDelay,
    required this.dateTimeQuick,
    required this.dateTimeQuickTimer,
    required this.dateTimeQuickDelay,
    required this.currentDate,
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

  DateTimeBounds getDateTimeBounds([DateTime? date]) {
    final current = date ?? currentDate.state;
    final dayOffset = current.weekday - 1;
    final weekStart = current.add(Duration(days: -dayOffset));
    final weekEnd = current.add(Duration(days: 6 - dayOffset));

    final boundaries = DateTimeBounds(
      start: weekStart.add(const Duration(days: -7)),
      end: weekEnd.add(const Duration(days: 7)),
    );

    return boundaries;
  }
}
