import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDateTimeQuickTimer = StateProvider<Timer?>((ref) {
  return null;
});

final currentDateTimeQuickTimerDelay = StateProvider<Duration>((ref) {
  return const Duration(seconds: 1);
});

final currentDateTimeLazyTimer = StateProvider<Timer?>((ref) {
  return null;
});

final currentDateTimeLazyTimerDelay = StateProvider<Duration>((ref) {
  return const Duration(seconds: 10);
});
