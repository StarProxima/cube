import 'package:cube_system/features/timetable_search_page/managers/timetable_search_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';
import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_card.dart';
import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/app_back_button.dart';

class TimetableSearchPage extends ConsumerWidget {
  const TimetableSearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _TimetableSearchPage();
  }
}

class _TimetableSearchPage extends ConsumerStatefulWidget {
  const _TimetableSearchPage();

  @override
  ConsumerState<_TimetableSearchPage> createState() =>
      _TimetableSearchPageState();
}

class _TimetableSearchPageState extends ConsumerState<_TimetableSearchPage> {
  @override
  Widget build(BuildContext context) {
    final timetables = ref.watch(timetableSearchPageTimetables);

    final manager = ref.watch(timetableSearchPageManager);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AppBackButton(),
                  SizedBox(width: 6),
                  Flexible(child: TimetableSearchPageTextField()),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
      body: ListView.separated(
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
      ),
    );
  }
}
