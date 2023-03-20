import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageSearchController =
    StateProvider<TextEditingController>((ref) {
  return TextEditingController();
});
