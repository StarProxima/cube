part of 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/lesson_card.dart';

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

    return Container(
      width: 5,
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.6),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: value,
          child: Container(
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
