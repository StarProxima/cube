part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardRecess extends ConsumerWidget {
  final EdgeInsets? margin;
  const LessonCardRecess({
    super.key,
    this.margin,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emptyLessonsBefore = ref
        .watch(_lessonInLessonCard.select((value) => value.emptyLessonsBefore));

    final number =
        ref.watch(_lessonInLessonCard.select((value) => value.number));

    final numberStart = number - emptyLessonsBefore;
    final numberEnd = number - 1;

    if (emptyLessonsBefore == 0) {
      return const SizedBox();
    }

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: RecessCard(
        numberStart: numberStart,
        numberEnd: numberEnd,
      ),
    );
  }
}
