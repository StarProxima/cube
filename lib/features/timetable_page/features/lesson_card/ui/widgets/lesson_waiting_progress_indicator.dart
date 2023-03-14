part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonWaitingProgressIndicator extends ConsumerWidget {
  const LessonWaitingProgressIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);
    final expectedNextlesson = ref.watch(lessonCardExpectedNextLesson);

    if (lesson != expectedNextlesson) return const SizedBox();

    final timeLeftStr = ref.watch(lessonCardExpectedNextLessonTimeLeftStr);

    return Container(
      height: 16,
      margin: const EdgeInsets.only(bottom: 8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: lesson.fadedColor,
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Align(
              alignment: Alignment.centerRight,
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: lesson.color,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              timeLeftStr,
              style: context.textStyles.chipLabel
                  .copyWith(color: context.colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
