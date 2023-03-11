import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_lessons.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/timetable_page_app_bar.dart';
import 'components/timetable_page_header.dart';

// final _load = FutureProvider<void>((ref) async {
//   await Future(() {});
// });

class TimetablePage extends ConsumerWidget {
  const TimetablePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(timetablePageManager);
    manager.getCurrentTimetable();
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
    final date = ref.read(currentDate).add(const Duration(days: 0));

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
