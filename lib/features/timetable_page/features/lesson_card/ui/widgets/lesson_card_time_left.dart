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
        final timeLeft = ref.watch(lessonCardTimeLeft);
        return Text(
          timeLeft != null ? DateFormat('H:mm:ss').format(timeLeft) : "null",
          style: const TextStyle(fontSize: 10),
        );
      },
    );
  }
}
