part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class NextLessonTimeToStartProgressBar extends ConsumerWidget {
  const NextLessonTimeToStartProgressBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeToStart = ref.watch(nextLessonTimeToStartProvider);
    final progressValue = ref.watch(nextLessonTimeToStartProgressValueProvider);

    final widthFactor = (1 - progressValue).cutNumberEdgesZeroToOne();

    final timeToStartStr = timeToStart?.format() ?? '00:00';

    final color =
        ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    return SizedBox(
      height: 20,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color.toAppFadedColor(),
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Align(
              alignment: Alignment.centerRight,
              child: FractionallySizedBox(
                widthFactor: widthFactor,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              timeToStartStr,
              style: context.textStyles.chipLabel
                  .copyWith(color: context.colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
