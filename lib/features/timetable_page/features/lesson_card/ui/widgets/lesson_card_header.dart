part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardHeader extends ConsumerWidget {
  const LessonCardHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref
        .watch(_lessonInLessonCard.select((value) => value.lesson.number))
        .toString();

    final timings =
        ref.watch(_lessonInLessonCard.select((value) => value.timings));

    final timingsStr =
        '${timings.start.format(context)} - ${timings.end.format(context)}';

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              padding: const EdgeInsets.only(left: 0.75, bottom: 0.75),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number,
                  style: context.textStyles.label.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              timingsStr,
              style: context.textStyles.smallLabel.copyWith(
                color: context.colors.subduedText,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
