part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardInfoPanel extends ConsumerWidget {
  const LessonCardInfoPanel({super.key});

  static final _random = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRemotely =
        ref.watch(_lessonInLessonCard.select((value) => value.isRemotely));

    final isCollision =
        ref.watch(_lessonInLessonCard.select((value) => value.isCollision));

    final isCancelled =
        ref.watch(_lessonInLessonCard.select((value) => value.isCancelled));

    final isActiveLessons =
        ref.watch(_lessonInLessonCard) == ref.watch(currentLesson);

    // final isCollision = _random.nextInt(100) < 25;

    // final isRemotely = _random.nextInt(100) < 25;

    // final isCancelled = _random.nextInt(100) < 0;

    final presentImportantNote = _random.nextInt(100) < 0;

    final numberOfNotes = _random.nextInt(100) < 0 ? _random.nextInt(7) : 0;

    return Row(
      children: [
        if (isRemotely)
          const LessonCardInfoPanelIcon(
            icon: Icon(Icons.home),
          ),
        if (presentImportantNote)
          const LessonCardInfoPanelIcon(
            icon: Icon(Icons.priority_high_rounded),
          ),
        if (numberOfNotes > 0)
          LessonCardInfoPanelIcon(
            icon: Text('$numberOfNotes'),
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

              return hasHours
                  ? const LessonCardInfoPanelChip(
                      minWidth: 66,
                      text: LessonCardTimeLeft(),
                    )
                  : const LessonCardInfoPanelChip(
                      minWidth: 46,
                      text: LessonCardTimeLeft(),
                    );
            },
          ),
        if (isCollision)
          const LessonCardInfoPanelChip(
            text: Text('Коллизия'),
            isDestructive: true,
          ),
        if (isCancelled)
          const LessonCardInfoPanelChip(
            text: Text('Отменено'),
            isDestructive: true,
          ),
      ],
    );
  }
}
