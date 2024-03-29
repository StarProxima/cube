part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(
      _lessonInLessonCard.select((value) => value.groupNames),
    );

    final teachers = ref.watch(
      _lessonInLessonCard.select((value) => value.teacherNames),
    );

    final place = ref.watch(
      _lessonInLessonCard.select((value) => value.place),
    );

    final timetableType =
        ref.watch(selectedTimetableStateHolder.select((value) => value?.type));

    if (timetableType == null) return const SizedBox();

    final lessonTypePosition = ref.watch(
      appSettingsStateHolder
          .select((value) => value.lessonCardLessonTypePosition),
    );

    final String leftText, rigthText;

    switch (timetableType) {
      case TimetableType.group:
        leftText = teachers.join(', ');
        rigthText = place ?? '';
        break;
      case TimetableType.teacher:
        leftText = groups.join(', ');
        rigthText = place ?? '';
        break;
      case TimetableType.place:
        leftText = teachers.join(', ');
        rigthText = groups.join(', ');
        break;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (leftText.isNotEmpty)
                Flexible(
                  child: AppTooltip.long(
                    message: timetableType.isTeacher
                        ? groups.length > 1
                            ? 'Группы'
                            : 'Группа'
                        : teachers.length > 1
                            ? 'Преподаватели'
                            : 'Преподаватель',
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        left: 8,
                      ),
                      child: Text(
                        leftText,
                        style: context.textStyles.smallLabel.copyWith(
                          color: context.colors.subduedText,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              if (lessonTypePosition.isAfterBottomLeftBlock)
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: LessonCardLessonTypeChip(),
                ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (lessonTypePosition.isBeforeBottomRightBlock)
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: LessonCardLessonTypeChip(),
              ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 160,
              ),
              padding: const EdgeInsets.only(top: 4, left: 8, right: 6),
              child: AppTooltip.long(
                message: timetableType.isPlace
                    ? groups.length > 1
                        ? 'Группы'
                        : 'Группа'
                    : 'Аудитория',
                child: Text(
                  rigthText,
                  style: context.textStyles.smallLabel.copyWith(
                    color: context.colors.subduedText,
                  ),
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            if (lessonTypePosition.isBottomRight)
              const Padding(
                padding: EdgeInsets.only(right: 4, left: 4),
                child: LessonCardLessonTypeChip(),
              ),
          ],
        ),
      ],
    );
  }
}
