import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetablePageManager = Provider<TimetablePageManager>((ref) {
  return TimetablePageManager();
});

class TimetablePageManager {
  TimetablePageManager();
}
