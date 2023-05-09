part of 'package:cube_system/features/timetable_page/features/lesson_card/ui/lesson_card.dart';

class LessonCardInfoPanelChip extends ConsumerWidget {
  final bool isDestructive;
  final double minWidth;
  final Color? color;
  final String? tooltipMessage;
  final Widget text;

  const LessonCardInfoPanelChip({
    super.key,
    this.isDestructive = false,
    this.minWidth = 0,
    this.color,
    this.tooltipMessage,
    required this.text,
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
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
        constraints: BoxConstraints(minWidth: minWidth),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.5, left: 0),
            child: DefaultTextStyle(
              style: context.textStyles.chipLabel
                  .copyWith(color: context.colors.white),
              child: text,
            ),
          ),
        ),
      ),
    );
  }
}
