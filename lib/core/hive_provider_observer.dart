import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hive/hive.dart';

import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

class HiveProviderObserver extends ProviderObserver {
  const HiveProviderObserver();

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider == selectedTimetable) {
      print(newValue);
      Future(() async {
        final box = await Hive.openBox('timetables');

        await box.put('selectedTimetable', newValue);
      });
    }
  }
}
