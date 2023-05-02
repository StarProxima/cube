part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIcons extends ConsumerWidget {
  const LessonCardIcons({super.key});

  static final _random = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isRemotely =
    //     ref.watch(_lessonInLessonCard.select((value) => value.isRemotely));

    final isActiveLessons =
        ref.watch(_lessonInLessonCard) == ref.watch(currentLesson);

    final color =
        ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    final isRemotely = _random.nextInt(100) < 25;

    final presentImportantNote = _random.nextInt(100) < 25;

    final numberOfNotes = _random.nextInt(100) < 25 ? _random.nextInt(7) : 0;

    return Row(
      children: [
        if (isRemotely)
          const LessonCardIconsIcon.icon(
            icon: Icon(
              Icons.wifi_rounded,
              size: 12,
              color: Colors.white,
            ),
          ),
        if (presentImportantNote)
          const LessonCardIconsIcon.icon(
            icon: Icon(
              Icons.priority_high_rounded,
              size: 12,
              color: Colors.white,
            ),
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
