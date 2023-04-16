part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    double value = ref.watch(lessonTimeToEndProgressValueProvider(lesson));

    final color = ref.watch(appLessonColorByLesson(lesson));

    return Container(
      width: 6,
      decoration: BoxDecoration(
        color: color.toAppFadedColor(),
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
