import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDate = Provider<DateTime>((ref) {
  final now = DateTime.now();
  return DateUtils.dateOnly(now);
});
