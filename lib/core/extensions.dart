import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension IterableExtension<E> on Iterable<E> {
  E? get firstOrNull => isNotEmpty ? first : null;
  E? get lastOrNull => isNotEmpty ? last : null;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  int? indexOfOrNull(Pattern pattern) {
    final index = indexOf(pattern);
    return index == -1 ? null : index;
  }
}

extension NumExtension on num {
  double cutNumberEdgesZeroToOne() {
    num val = this;
    if (val >= 1) {
      val = 0.99999;
    } else if (val <= 0) {
      val = 0.00001;
    }
    return val.toDouble();
  }
}

extension DateTimeExtension on DateTime {
  int _numOfWeeks(int year) {
    DateTime dec28 = DateTime(year, 12, 28);
    int dayOfDec28 = int.parse(DateFormat("D").format(dec28));
    return ((dayOfDec28 - dec28.weekday + 10) / 7).floor();
  }

  int get weekNumber {
    final date = this;
    int dayOfYear = int.parse(DateFormat("D").format(date));
    int woy = ((dayOfYear - date.weekday + 10) / 7).floor();
    if (woy < 1) {
      woy = _numOfWeeks(date.year - 1);
    } else if (woy > _numOfWeeks(date.year)) {
      woy = 1;
    }
    return woy;
  }
}

extension ColorExtension on Color {
  Color toAppFadedColor() => withOpacity(0.6);
}
