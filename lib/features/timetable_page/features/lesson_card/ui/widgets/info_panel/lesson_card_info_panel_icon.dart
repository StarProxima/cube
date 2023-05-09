part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardInfoPanelIcon extends ConsumerWidget {
  final bool isDestructive;
  final Color? color;
  final String? tooltipMessage;
  final Widget icon;

  const LessonCardInfoPanelIcon({
    super.key,
    this.isDestructive = false,
    this.color,
    this.tooltipMessage,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundColor = isDestructive
        ? context.colors.destructive
        : color ??
            ref.watch(appLessonColorByLesson(ref.read(_lessonInLessonCard)));

    return AppTooltip(
      message: tooltipMessage ?? '',
      child: Container(
        margin: const EdgeInsets.only(right: 4),
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: DefaultTextStyle(
            style: context.textStyles.chipLabel
                .copyWith(color: context.colors.white),
            child: IconTheme(
              data: Theme.of(context).iconTheme.copyWith(
                    size: 13.5,
                    color: context.colors.white,
                  ),
              child: Padding(
                padding: icon is Text
                    ? const EdgeInsets.only(left: 0.4)
                    : const EdgeInsets.only(bottom: 1, right: 0.2),
                child: icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
