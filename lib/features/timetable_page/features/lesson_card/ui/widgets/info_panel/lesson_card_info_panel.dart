part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardInfoPanel extends ConsumerWidget {
  const LessonCardInfoPanel({super.key});

  static final _random = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    final isRemotely = lesson.isRemotely;

    final isCollision = lesson.isCollision;

    final isCancelled = lesson.isCancelled;

    // final isCollision = _random.nextInt(100) < 25;

    // final isRemotely = _random.nextInt(100) < 25;

    // final isCancelled = _random.nextInt(100) < 25;

    final presentImportantNote = _random.nextInt(100) < 0;

    final numberOfNotes = _random.nextInt(100) < 0 ? _random.nextInt(7) : 0;

    return Row(
      children: [
        if (isRemotely)
          const LessonCardInfoPanelIcon(
            tooltipMessage: 'Дистанционное занятие',
            icon: Icon(Icons.home),
          ),
        if (presentImportantNote)
          const LessonCardInfoPanelIcon(
            tooltipMessage: 'Есть важная заметка',
            icon: Icon(Icons.priority_high_rounded),
          ),
        if (numberOfNotes > 0)
          LessonCardInfoPanelIcon(
            tooltipMessage: 'Количество заметок',
            icon: Text('$numberOfNotes'),
          ),
        const LessonCardInfoPanelTimeToEnd(),
        if (isCollision)
          const LessonCardInfoPanelChip(
            isDestructive: true,
            tooltipMessage: 'Время занятия совпадает с другим',
            text: Text('Коллизия'),
          ),
        if (isCancelled)
          const LessonCardInfoPanelChip(
            isDestructive: true,
            tooltipMessage: 'Занятие было отменено',
            text: Text('Отменено'),
          ),
      ],
    );
  }
}
