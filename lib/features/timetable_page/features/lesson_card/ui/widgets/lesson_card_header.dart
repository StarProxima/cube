part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardHeader extends ConsumerWidget {
  const LessonCardHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref
        .watch(_lessonInLessonCard.select((value) => value.number))
        .toString();

    final timing = ref.watch(_timingInLessonCard);

    final timingStr =
        '${timing.first.format(context)} - ${timing.last.format(context)}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              timingStr,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        const Text(
          '',
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
