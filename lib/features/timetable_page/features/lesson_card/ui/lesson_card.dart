import 'dart:math';

import 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/free_time_window_lesson_card.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';
import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/source/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/current_lesson_time_to_end_provider.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_provider.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/lesson_time_to_start_progress_value_provider.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_progress_value_provider.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';

part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_body.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_footer.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_header.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_icons.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_indicator.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_time_left.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/next_lesson_time_to_start_progress_bar.dart';

final _lessonInLessonCard = Provider<Lesson>((ref) {
  return throw UnimplementedError();
});

class LessonCard extends ConsumerWidget {
  final Lesson lesson;

  const LessonCard(this.lesson, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetablePageManager);
    return ProviderScope(
      overrides: [
        _lessonInLessonCard.overrideWithValue(lesson),
      ],
      child: Column(
        children: [
          if (lesson.emptyLessonsBefore != 0)
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 8),
              child: FreeTimeWindowLessonCard(
                numberStart: lesson.lesson.number - lesson.emptyLessonsBefore,
                numberEnd: lesson.lesson.number - 1,
              ),
            ),
          Consumer(
            builder: (context, ref, _) {
              final lessonNext = ref.watch(nextLesson);
              final lessonCurrent = ref.watch(currentLesson);
              if (lesson != lessonNext || lessonCurrent != null) {
                return const SizedBox();
              }
              return const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: NextLessonTimeToStartProgressBar(),
              );
            },
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: context.colors.background,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.shadow,
                      blurRadius: 12,
                      offset: const Offset(0, 1),
                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,
                child: Material(
                  type: MaterialType.transparency,
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LessonCardIndicator(),
                        Expanded(
                          child: InkWell(
                            onTap: manager.findLastCurrentNextLesson,
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LessonCardHeader(),
                                      SizedBox(height: 8),
                                      LessonCardBody(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                    bottom: 4,
                                  ),
                                  child: Column(
                                    children: [
                                      LessonCardFooter(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 0,
                right: 8,
                child: LessonCardIcons(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
