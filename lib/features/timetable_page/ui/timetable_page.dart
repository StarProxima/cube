import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_selected_date.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';
import 'package:cube_system/features/timetable_page/features/week_timeline/ui/week_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_app_bar.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header.dart';

import 'package:cube_system/features/timetable_page/managers/timetable_date_time_manager.dart';

// final _load = FutureProvider<void>((ref) async {
//   await Future(() {});
// });

class TimetablePage extends ConsumerWidget {
  const TimetablePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeManager = ref.watch(timetableDatetimeManager);
    timeManager.setCurrentDateLazyTimeTimer();
    timeManager.setCurrentDateQuickTimeTimer();
    final manager = ref.read(timetablePageManager);
    manager.updateCurrentTimetable();

    return const _TimetablePage();
  }
}

class _TimetablePage extends ConsumerStatefulWidget {
  const _TimetablePage();

  @override
  ConsumerState<_TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends ConsumerState<_TimetablePage> {
  @override
  Widget build(BuildContext context) {
    final manager = ref.read(timetablePageManager);

    final date = ref.watch(timetablePageSelectedDate);
    final lessons = ref.watch(timetablePageDayLessons(date));

    return Scaffold(
      appBar: const TimetablePageAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: TimetablePageHeader(),
          ),
          const WeekTimeline(),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: lessons.length,
              itemBuilder: (context, index) => LessonCard(lessons[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 16),
            ),
          ),
        ],
      ),
    );
  }
}
