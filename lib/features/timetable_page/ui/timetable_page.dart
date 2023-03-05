import 'package:cube_system/features/timetable_page/ui/widgets/timetable_lesson_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/timetable_page_app_bar.dart';

// final _load = FutureProvider<void>((ref) async {
//   await Future(() {});
// });

class TimetablePage extends ConsumerWidget {
  const TimetablePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    lessonNumber = 3;
    return Scaffold(
      appBar: const TimetablePageAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Timetable Name",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: 3,
              itemBuilder: (context, index) => const TimetableLessonCard(),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
            ),
          ),
        ],
      ),
    );
  }
}