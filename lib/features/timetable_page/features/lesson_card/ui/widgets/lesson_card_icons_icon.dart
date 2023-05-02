part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIconsIcon extends ConsumerWidget {
  final int? number;
  final Widget? icon;

  const LessonCardIconsIcon.number({
    super.key,
    required this.number,
  }) : icon = null;

  const LessonCardIconsIcon.icon({
    super.key,
    required this.icon,
  }) : number = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color =
        ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    return Container(
      margin: const EdgeInsets.only(right: 4),
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: number != null
            ? Padding(
                padding: const EdgeInsets.only(left: 0.5),
                child: Text(
                  number!.toString(),
                  style: context.textStyles.chipLabel
                      .copyWith(color: context.colors.white),
                ),
              )
            : icon != null
                ? icon!
                : null,
      ),
    );
  }
}
