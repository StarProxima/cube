part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIcons extends ConsumerWidget {
  const LessonCardIcons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRemotely = ref
        .watch(_lessonInLessonCard.select((value) => value.lesson.isRemotely));

    final isActiveLessons =
        ref.watch(_lessonInLessonCard) == ref.watch(lessonCardActiveLesson);

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));

    return Row(
      children: [
        if (isRemotely)
          Container(
            margin: const EdgeInsets.only(right: 4),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.wifi_rounded,
              size: 12,
              color: Colors.white,
            ),
          ),
        Container(
          margin: const EdgeInsets.only(right: 4),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.priority_high_rounded,
            size: 12,
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 4),
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 0, left: 0.75),
              child: const Text(
                '2',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        if (isActiveLessons)
          Container(
            margin: const EdgeInsets.only(right: 4),
            padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 5),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 0, left: 0.75),
              child: LessonCardTimeLeft(),
            ),
          ),
      ],
    );
  }
}
