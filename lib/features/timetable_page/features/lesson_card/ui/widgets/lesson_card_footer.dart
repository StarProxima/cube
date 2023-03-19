part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref
            .watch(
              _lessonInLessonCard.select((value) => value.lesson.groupNames),
            )
            ?.join(", ") ??
        "null";

    final teachers = ref
            .watch(
              _lessonInLessonCard.select((value) => value.lesson.teacherNames),
            )
            ?.join(", ") ??
        "null";

    final place = ref.watch(
          _lessonInLessonCard.select((value) => value.lesson.place?.name),
        ) ??
        'null';

    final type = ref.watch(
      _lessonInLessonCard.select((value) => value.lesson.type.shortName),
    );

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));

    final teachersIsNotEmpty = teachers != "";

    final timetableType =
        ref.watch(selectedTimetable.select((value) => value!.type));

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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (teachersIsNotEmpty)
                Flexible(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      child: Text(
                        leftText,
                        style: context.textStyles.smallLabel.copyWith(
                          color: context.colors.subduedText,
                        ),
                      ),
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 4,
                  left: teachersIsNotEmpty ? 2 : 8,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Text(
                  type,
                  style: context.textStyles.chipLabel
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(8),
          child: Container(
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
        ),
      ],
    );
  }
}
