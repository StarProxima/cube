part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teachers = ref
            .watch(_lessonInLessonCard.select((value) => value.teacherNames))
            ?.join(",") ??
        "null";

    final type =
        ref.watch(_lessonInLessonCard.select((value) => value.type.shortName));

    final place =
        ref.watch(_lessonInLessonCard.select((value) => value.place?.name)) ??
            'null';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  teachers,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Text(
                  type,
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Text(
            place,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
