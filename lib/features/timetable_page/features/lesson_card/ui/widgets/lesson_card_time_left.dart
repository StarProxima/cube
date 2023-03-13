part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardTimeLeft extends ConsumerWidget {
  const LessonCardTimeLeft({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isActiveLessons =
        ref.watch(_lessonInLessonCard) == ref.watch(lessonCardActiveLesson);

    if (!isActiveLessons) return const SizedBox();

    return Consumer(
      builder: (context, ref, _) {
        final timeLeftStr = ref.watch(lessonCardTimeLeftStr);
        return Text(
          timeLeftStr,
          style: context.textStyles.chipLabel
              .copyWith(color: context.colors.white),
        );
      },
    );
  }
}
