part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIcons extends ConsumerWidget {
  const LessonCardIcons({super.key});

  static final _random = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color =
        ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    final isRemotely =
        ref.watch(_lessonInLessonCard.select((value) => value.isRemotely));

    final isCollision =
        ref.watch(_lessonInLessonCard.select((value) => value.isCollision));

    final isActiveLessons =
        ref.watch(_lessonInLessonCard) == ref.watch(currentLesson);

    // final isCollision = _random.nextInt(100) < 25;

    // final isRemotely = _random.nextInt(100) < 25;

    final isCancelled = _random.nextInt(100) < 0;

    final presentImportantNote = _random.nextInt(100) < 0;

    final numberOfNotes = _random.nextInt(100) < 0 ? _random.nextInt(7) : 0;

    return Row(
      children: [
        if (isCancelled)
          const LessonCardIconsIcon.icon(
            icon: Icon(Icons.cancel),
            isDestructive: true,
          ),
        if (isCollision)
          const LessonCardIconsIcon.icon(
            icon: Icon(Icons.error),
            isDestructive: true,
          ),
        if (isRemotely)
          const LessonCardIconsIcon.icon(
            icon: Icon(Icons.home),
          ),
        if (presentImportantNote)
          const LessonCardIconsIcon.icon(
            icon: Icon(Icons.priority_high_rounded),
          ),
        if (numberOfNotes > 0)
          LessonCardIconsIcon.number(
            number: numberOfNotes,
          ),
        if (isActiveLessons)
          Consumer(
            builder: (context, ref, _) {
              ref.watch(
                currentLessonTimeToEndProvider
                    .select((value) => value?.format().length),
              );

              final hasHours =
                  (ref.read(currentLessonTimeToEndProvider)?.hours ?? 0) > 0;

              return Container(
                margin: const EdgeInsets.only(right: 4),
                padding:
                    const EdgeInsets.symmetric(vertical: 1.5, horizontal: 5),
                constraints: BoxConstraints(
                  minWidth: hasHours ? 66 : 46,
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
              );
            },
          ),
      ],
    );
  }
}
