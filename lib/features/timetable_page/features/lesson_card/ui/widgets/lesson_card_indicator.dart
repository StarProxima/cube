part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    var value = ref.watch(lessonCardIndicatorValue(lesson));

    if (value >= 1) {
      value = 0.99999;
    } else if (value <= 0) {
      value = 0.00001;
    }

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
