import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageSearchFocus = StateProvider<FocusNode>((ref) {
  return FocusNode();
});
