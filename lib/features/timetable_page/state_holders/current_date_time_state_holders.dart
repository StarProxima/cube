import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDate = StateProvider<DateTime>((ref) {
  return DateUtils.dateOnly(DateTime.now());
});

final currentDateTimeQuick = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final currentDateTimeQuickTimer = StateProvider<Timer?>((ref) {
  return null;
});

final currentDateTimeQuickDelay = StateProvider<Duration>((ref) {
  return const Duration(seconds: 1);
});

final currentDateTimeLazy = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final currentDateTimeLazyTimer = StateProvider<Timer?>((ref) {
  return null;
});

final currentDateTimeLazyDelay = StateProvider<Duration>((ref) {
  return const Duration(seconds: 10);
});
