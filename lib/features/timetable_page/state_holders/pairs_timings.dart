import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pairsTimings = StateProvider<Map<int, List<TimeOfDay>>>((ref) {
  return {
    0: [
      const TimeOfDay(hour: 8, minute: 0),
      const TimeOfDay(hour: 20, minute: 0),
    ],
    1: [
      const TimeOfDay(hour: 8, minute: 0),
      const TimeOfDay(hour: 9, minute: 20),
    ],
    2: [
      const TimeOfDay(hour: 9, minute: 30),
      const TimeOfDay(hour: 10, minute: 50),
    ],
    3: [
      const TimeOfDay(hour: 11, minute: 10),
      const TimeOfDay(hour: 12, minute: 30),
    ],
    4: [
      const TimeOfDay(hour: 12, minute: 40),
      const TimeOfDay(hour: 14, minute: 0),
    ],
    5: [
      const TimeOfDay(hour: 14, minute: 10),
      const TimeOfDay(hour: 15, minute: 40),
    ],
    6: [
      const TimeOfDay(hour: 15, minute: 40),
      const TimeOfDay(hour: 17, minute: 0),
    ],
    7: [
      const TimeOfDay(hour: 17, minute: 10),
      const TimeOfDay(hour: 18, minute: 30),
    ],
  };
});
