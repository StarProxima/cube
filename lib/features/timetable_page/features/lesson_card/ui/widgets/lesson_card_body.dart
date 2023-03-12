part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardBody extends ConsumerWidget {
  const LessonCardBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(
          _lessonInLessonCard.select((value) => value.discipline?.name),
        ) ??
        "null";
    return Text(
      name,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }
}
