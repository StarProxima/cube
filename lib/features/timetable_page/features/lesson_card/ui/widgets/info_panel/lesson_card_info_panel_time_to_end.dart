part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardInfoPanelTimeToEnd extends ConsumerWidget {
  const LessonCardInfoPanelTimeToEnd({super.key});

  static const _tooltipMessage = 'Осталось времени до конца занятия';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    final currentLesson = ref.watch(currentLessonStateHolder);

    final manager = ref.read(timetableLessonsManager);

    final isActiveLessons = manager.isEquelLessons(lesson, currentLesson);

    if (!isActiveLessons) return const SizedBox();

    return Consumer(
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
                tooltipMessage: _tooltipMessage,
                text: _LessonCardInfoPanelTimeToEndText(),
              )
            : const LessonCardInfoPanelChip(
                minWidth: 46,
                tooltipMessage: _tooltipMessage,
                text: _LessonCardInfoPanelTimeToEndText(),
              );
      },
    );
  }
}

class _LessonCardInfoPanelTimeToEndText extends ConsumerWidget {
  const _LessonCardInfoPanelTimeToEndText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, _) {
        final timeToEnd = ref.watch(currentLessonTimeToEndProvider);
        final timeToEndStr = timeToEnd?.format() ?? '00:00';
        return Text(
          timeToEndStr,
          style: context.textStyles.chipLabel
              .copyWith(color: context.colors.white),
        );
      },
    );
  }
}
