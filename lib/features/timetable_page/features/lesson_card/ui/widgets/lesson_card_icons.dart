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
            child: Padding(
              padding: const EdgeInsets.only(left: 0.5),
              child: Text(
                '2',
                style: context.textStyles.chipLabel
                    .copyWith(color: context.colors.white),
              ),
            ),
          ),
        ),
        if (isActiveLessons)
          Container(
            margin: const EdgeInsets.only(right: 4),
            padding: const EdgeInsets.symmetric(vertical: 1.5, horizontal: 5),
            constraints: const BoxConstraints(
              minWidth: 46,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 0.5, left: 0),
                child: LessonCardTimeLeft(),
              ),
            ),
          ),
      ],
    );
  }
}
