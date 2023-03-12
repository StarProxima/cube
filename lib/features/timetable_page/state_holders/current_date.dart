import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDate = StateProvider<DateTime>((ref) {
  return DateUtils.dateOnly(DateTime.now());
});

final currentDateTime = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final currentDateTimeTimer = StateProvider<Timer?>((ref) {
  return null;
});
