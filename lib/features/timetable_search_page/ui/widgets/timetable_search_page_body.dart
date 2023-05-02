import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_event.dart';
import 'package:cube_system/features/timetable_search_page/ui/event_pages/no_found_search_event_page.dart';
import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/managers/timetable_search_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';

import 'package:cube_system/features/timetable_search_page/ui/event_pages/welcome_search_event_page.dart';

import 'package:cube_system/ui/widgets/event_pages/no_connection_event_page.dart';
import 'package:go_router/go_router.dart';

class TimetableSearchPageBody extends ConsumerWidget {
  const TimetableSearchPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetableSearchPageManager);
    final timetables = ref.watch(timetableSearchPageTimetables);
    final event = ref.watch(timetableSearchPageEventType);

    switch (event) {
      case TimetableSearchEventType.welcome:
        return const WelcomeSearchEventPage();

      case TimetableSearchEventType.inputDelay:
      case TimetableSearchEventType.loading:
        return const Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 36),
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );

      case TimetableSearchEventType.noFound:
        return const NoFoundSearchEventPage();

      case TimetableSearchEventType.error:
        return NoConnectionEventPage(
          onTap: manager.delayedSearch,
        );

      case TimetableSearchEventType.results:
    }

    return ListView.separated(
      itemCount: timetables.length,
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemBuilder: (context, index) {
        final timetable = timetables[index];
        return TimetableSearchInfoCard(
          timetable: timetable,
          onTap: () async {
            manager.selectTimetable(timetable);
            context.go('/timetable');
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
    );
  }
}
