import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/state_holders/lesson_card_indicator_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../gen/api/cube_api.swagger.dart';
import '../../../state_holders/pairs_timings.dart';

part 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_body.dart';
part 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_footer.dart';
part 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_header.dart';
part 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_indicator.dart';

final _lessonInLessonCard = Provider<LessonFullNamesInDb>((ref) {
  return throw UnimplementedError();
});

final _timingInLessonCard = Provider<List<TimeOfDay>>((ref) {
  return throw UnimplementedError();
});

class LessonCard extends ConsumerWidget {
  final LessonFullNamesInDb lesson;

  const LessonCard(this.lesson, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = lesson.number;

    final timing = ref.watch(pairsTimings)[number]!;

    return ProviderScope(
      overrides: [
        _lessonInLessonCard.overrideWithValue(lesson),
        _timingInLessonCard.overrideWithValue(timing),
      ],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
