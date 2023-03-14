part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    double value = ref.watch(lessonCardIndicatorValue(lesson));

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));
    final fadedColor =
        ref.watch(_lessonInLessonCard.select((value) => value.fadedColor));
    return Container(
      width: 6,
      decoration: BoxDecoration(
        color: fadedColor,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: value.cutNumberEdgesZeroToOne(),
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
