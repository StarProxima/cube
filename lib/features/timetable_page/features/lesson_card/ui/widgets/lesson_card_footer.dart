part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teachers = ref
            .watch(
              _lessonInLessonCard.select((value) => value.lesson.teacherNames),
            )
            ?.join(",") ??
        "null";

    final type = ref.watch(
      _lessonInLessonCard.select((value) => value.lesson.type.shortName),
    );

    final place = ref.watch(
          _lessonInLessonCard.select((value) => value.lesson.place?.name),
        ) ??
        'null';

    final color = ref.watch(_lessonInLessonCard.select((value) => value.color));

    final teachersIsNotEmpty = teachers != "";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: 4,
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
                        teachers,
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
        Flexible(
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Text(
                place,
                style: context.textStyles.smallLabel.copyWith(
                  color: context.colors.subduedText,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
