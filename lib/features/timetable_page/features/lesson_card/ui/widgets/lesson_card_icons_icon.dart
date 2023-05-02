part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardIconsIcon extends ConsumerWidget {
  final int? number;
  final Widget? icon;
  final bool isDestructive;
  final Color? color;

  const LessonCardIconsIcon.number({
    super.key,
    required this.number,
    this.isDestructive = false,
    this.color,
  }) : icon = null;

  const LessonCardIconsIcon.icon({
    super.key,
    required this.icon,
    this.isDestructive = false,
    this.color,
  }) : number = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundColor = isDestructive
        ? context.colors.destructive
        : color ??
            ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    return Container(
      margin: const EdgeInsets.only(right: 4),
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: backgroundColor,
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
                ? IconTheme(
                    data: Theme.of(context).iconTheme.copyWith(
                          size: 13.5,
                          color: context.colors.white,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 1, right: 0.2),
                      child: icon!,
                    ),
                  )
                : null,
      ),
    );
  }
}
