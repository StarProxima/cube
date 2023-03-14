part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    double value = ref.watch(lessonCardIndicatorValue(lesson));

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));

    return Container(
      width: 6,
      decoration: BoxDecoration(
        color: color.withOpacity(0.6),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: value,
          child: Container(
            width: 6,
            decoration: BoxDecoration(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
