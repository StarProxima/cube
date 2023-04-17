part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardLessonTypeChip extends ConsumerWidget {
  const LessonCardLessonTypeChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(
      _lessonInLessonCard.select((value) => value.typeShortName),
    );

    final color =
        ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        type,
        style: context.textStyles.chipLabel.copyWith(color: Colors.white),
      ),
    );
  }
}
