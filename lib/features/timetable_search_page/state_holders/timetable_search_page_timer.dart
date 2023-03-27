import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageTimer = StateProvider<Timer>((ref) {
  return Timer(Duration.zero, () {});
});
