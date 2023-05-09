part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardTimeToStart extends ConsumerWidget {
  final EdgeInsets? margin;
  const LessonCardTimeToStart({
    super.key,
    this.margin,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    final dontShow = ref.watch(
      nextLessonTimeToStartProvider.select((value) => value == null),
    );

    final nextLesson = ref.watch(nextLessonStateHolder);

    final currentLesson = ref.watch(currentLessonStateHolder);

    final manager = ref.read(timetableLessonsManager);

    final isActiveLessons = manager.isEquelLessons(lesson, nextLesson);

    if (dontShow || !isActiveLessons || currentLesson != null) {
      return const SizedBox();
    }

    return AppTooltip.long(
      message: 'Время до начала занятия',
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: const NextLessonTimeToStartProgressBar(),
      ),
    );
  }
}
