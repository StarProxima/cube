part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref
        .watch(
          _lessonInLessonCard.select((value) => value.groupNames),
        )
        .join(", ");

    final teachers = ref
        .watch(
          _lessonInLessonCard.select((value) => value.teacherNames),
        )
        .join(", ");

    final place = ref.watch(
          _lessonInLessonCard.select((value) => value.place),
        ) ??
        '';

    final teachersIsNotEmpty = teachers != "";

    final timetableType =
        ref.watch(selectedTimetable.select((value) => value!.type));

    final lessonTypePosition = ref.watch(
      appSettingsStateHolder
          .select((value) => value.lessonCardLessonTypePosition),
    );

    final String leftText, rigthText;

    switch (timetableType) {
      case TimetableType.group:
        leftText = teachers;
        rigthText = place;
        break;
      case TimetableType.teacher:
        leftText = groups;
        rigthText = place;
        break;
      case TimetableType.place:
        leftText = teachers;
        rigthText = groups;
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
              if (lessonTypePosition.isBottomLeft)
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: LessonCardLessonTypeChip(),
                ),
              if (teachersIsNotEmpty)
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                      left: 8,
                    ),
                    child: Text(
                      leftText,
                      style: context.textStyles.smallLabel.copyWith(
                        color: context.colors.subduedText,
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
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                rigthText,
                style: context.textStyles.smallLabel.copyWith(
                  color: context.colors.subduedText,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            if (lessonTypePosition.isBottomRight)
              const Padding(
                padding: EdgeInsets.only(right: 4),
                child: LessonCardLessonTypeChip(),
              ),
          ],
        ),
      ],
    );
  }
}
