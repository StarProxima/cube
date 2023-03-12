import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDate = Provider<DateTime>((ref) {
  return DateUtils.dateOnly(DateTime.now());
});

final currentDateTime = Provider<DateTime>((ref) {
  return DateTime.now();
});
