import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/managers/timetable_search_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';

class TimetableSearchPageBody extends ConsumerWidget {
  const TimetableSearchPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetableSearchPageManager);
    final timetables = ref.watch(timetableSearchPageTimetables);

    return ListView.separated(
      itemCount: timetables.length,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemBuilder: (context, index) {
        final timetable = timetables[index];
        return TimetableCard(
          timetable: timetable,
          onTap: () {
            manager.selectTimetable(timetable);
            Navigator.of(context).pop();
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
    );
  }
}
