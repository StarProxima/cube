import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDate = StateProvider<DateTime>((ref) {
  return DateUtils.dateOnly(DateTime.now());
});

final currentDateTimeQuick = StateProvider<DateTime>((ref) {
  return DateTime.now();
});

final currentDateTimeLazy = StateProvider<DateTime>((ref) {
  return DateTime.now();
});
