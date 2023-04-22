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

    final lessonNext = ref.watch(nextLesson);
    final lessonCurrent = ref.watch(currentLesson);

    if (dontShow || lesson != lessonNext || lessonCurrent != null) {
      return const SizedBox();
    }

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: const NextLessonTimeToStartProgressBar(),
    );
  }
}
