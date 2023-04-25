part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lesson = ref.watch(_lessonInLessonCard);

    double value =
        ref.watch(lessonTimeToEndProgressValueProvider(lesson.dateTimings));

    final color = ref.watch(appLessonColorByLesson(lesson));

    final isOnIndicator = ref.watch(
      appSettingsStateHolder
          .select((value) => value.lessonCardLessonTypePosition.isOnIndicator),
    );

    double width = isOnIndicator ? 20 : 6;

    return Stack(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
            color: color.toAppFadedColor(),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: value.cutNumberEdgesZeroToOne(),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
          ),
        ),
        if (isOnIndicator)
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: RotatedBox(
                quarterTurns: 3,
                child: Consumer(
                  builder: (context, ref, _) {
                    final type = ref.watch(
                      _lessonInLessonCard
                          .select((value) => value.typeShortName),
                    );
                    return Text(
                      type,
                      style: context.textStyles.chipLabel
                          .copyWith(color: Colors.white),
                    );
                  },
                ),
              ),
            ),
          ),
      ],
    );
  }
}
