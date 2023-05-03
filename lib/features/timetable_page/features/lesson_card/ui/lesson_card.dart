import 'dart:math';

import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/recess_card.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/current_lesson.dart';
import 'package:cube_system/models/lesson/lesson.dart';
import 'package:cube_system/core/extensions.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/current_lesson_time_to_end_provider.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_provider.dart';

import 'package:cube_system/features/timetable_page/features/lesson_card/providers/lesson_time_to_start_progress_value_provider.dart';
import 'package:cube_system/features/timetable_page/features/lesson_card/providers/next_lesson_time_to_start_progress_value_provider.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';

import 'package:cube_system/features/settings/state_holders/app_lesson_colors.dart';

import 'package:cube_system/features/timetable_page/state_holders/lessons/next_lesson.dart';

part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_body.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_footer.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_header.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/info_panel/lesson_card_info_panel_icon.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/info_panel/lesson_card_info_panel_chip.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/info_panel/lesson_card_info_panel.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_indicator.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_time_left.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/next_lesson_time_to_start_progress_bar.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_lesson_type_chip.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_time_to_start.dart';
part 'package:cube_system/features/timetable_page/features/lesson_card/ui/widgets/lesson_card_recess.dart';

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
          const LessonCardRecess(
            margin: EdgeInsets.only(bottom: 12, top: 9),
          ),
          const LessonCardTimeToStart(
            margin: EdgeInsets.only(bottom: 9, top: 4),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 9),
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 12,
                                    right: 12,
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      LessonCardHeader(),
                                      SizedBox(height: 8),
                                      LessonCardBody(),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 4,
                                    right: 4,
                                    bottom: 4,
                                  ),
                                  child: LessonCardFooter(),
                                ),
                                const SizedBox(height: 4),
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
                child: LessonCardInfoPanel(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
