import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/current_date.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_app_bar.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_day.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/managers/timetable_date_time_manager.dart';

import 'package:cube_system/features/timetable_page/features/week_timeline/ui/week_timeline.dart';
import 'package:cube_system/features/timetable_page/state_holders/timetable_page_selected_date.dart';

// final _load = FutureProvider<void>((ref) async {
//   await Future(() {});
// });

// final targetDateForPageView = StateProvider<DateTime>((ref) {
//   return ref.read(timetablePageSelectedDate);
// });

final _pickedDateTimeInPageView = StateProvider<DateTime>((ref) {
  return ref.read(timetablePageSelectedDate);
});

class TimetablePage extends ConsumerWidget {
  const TimetablePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeManager = ref.watch(timetableDatetimeManager);
    timeManager.setTimers();

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
  final initialPage = 1000;
  late final pageController = PageController(initialPage: initialPage);

  @override
  Widget build(BuildContext context) {
    final manager = ref.read(timetablePageManager);

    final date = ref.read(currentDate);

    ref.listen(timetablePageSelectedDate, (prev, next) {
      if (ref.read(_pickedDateTimeInPageView) == next) return;
      final targetPage = initialPage - date.difference(next).inDays;

      final distanceIsTooLong =
          (pageController.page!.round() - targetPage).abs() > 7;

      if (distanceIsTooLong) {
        pageController.jumpToPage(targetPage);
      } else {
        pageController.animateToPage(
          targetPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });

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
          const Divider(
            thickness: 1,
            height: 1,
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: initialPage * 2,
              onPageChanged: (index) {
                final newDate = date.add(Duration(days: index - initialPage));
                final selectedDate = ref.read(timetablePageSelectedDate);
                final lastDate = ref.read(_pickedDateTimeInPageView);
                ref.read(_pickedDateTimeInPageView.notifier).state = newDate;
                if (lastDate == selectedDate) {
                  manager.pickSelectedDate(newDate);
                }
              },
              itemBuilder: (context, index) {
                final day = date.add(Duration(days: index - initialPage));
                return TimetablePageDay(
                  date: day,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
