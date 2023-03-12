import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/features/timetable_page/state_holders/pairs_timings.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_indicator_value.dart';

import 'package:cube_system/models/lesson/lesson.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_time_left.dart';
import 'package:intl/intl.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/state_holders/lesson_card_active_lesson.dart';

part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_body.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_footer.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_header.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_indicator.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_time_left.dart';

final _lessonInLessonCard = Provider<Lesson>((ref) {
  return throw UnimplementedError();
});

class LessonCard extends ConsumerWidget {
  final LessonFullNamesInDb lesson;

  const LessonCard(this.lesson, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = lesson.number;

    final timings = ref.watch(pairsTimings)[number]!;

    final lessonWithTimings = Lesson(lesson: lesson, timings: timings);

    return ProviderScope(
      overrides: [
        _lessonInLessonCard.overrideWithValue(lessonWithTimings),
      ],
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.blueGrey[50],
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 12,
                  offset: const Offset(0, 1),
                )
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LessonCardIndicator(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 12,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          LessonCardHeader(),
                          SizedBox(height: 8),
                          LessonCardBody(),
                          SizedBox(height: 8),
                          LessonCardFooter(),
                          // SizedBox(height: 10),
                          // Divider(
                          //   thickness: 1.5,
                          //   height: 1,
                          // ),
                          // SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 8,
            child: Row(
              children: [
                // Container(
                //   margin: const EdgeInsets.only(right: 4),
                //   child: const Icon(
                //     Icons.notifications,
                //     size: 20,
                //     color: Colors.amber,
                //   ),
                // ),
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.priority_high_rounded,
                    size: 11,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  width: 14,
                  height: 14,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.only(top: 0.75, left: 0.75),
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
