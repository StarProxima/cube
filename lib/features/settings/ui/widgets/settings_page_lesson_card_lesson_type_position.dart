part of '../settings_page.dart';

class _SettingsPageLessonCardLessonTypePosition extends ConsumerWidget {
  const _SettingsPageLessonCardLessonTypePosition();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonCardLessonTypePosition = ref.watch(
      appSettingsViewStateHolder
          .select((value) => value.lessonCardLessonTypePosition),
    );

    final settingsNotifier = ref.read(appSettingsViewStateHolder.notifier);

    return AppRadioSelector<LessonCardLessonTypePosition>(
      label: const Text('Расположение типа занятия в карточке занятия'),
      value: lessonCardLessonTypePosition,
      onSelect: (value) =>
          settingsNotifier.editLessonCardLessonTypePosition(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('afterBottomLeftBlock'),
          description: Text('Расположение по умолчанию'),
          value: LessonCardLessonTypePosition.afterBottomLeftBlock,
        ),
        AppRadioSelectorItem(
          title: Text('afterTopLeftBlock'),
          value: LessonCardLessonTypePosition.afterTopLeftBlock,
        ),
        AppRadioSelectorItem(
          title: Text('bottomLeft'),
          value: LessonCardLessonTypePosition.bottomLeft,
        ),
        AppRadioSelectorItem(
          title: Text('topRight'),
          value: LessonCardLessonTypePosition.topRight,
        ),
        AppRadioSelectorItem(
          title: Text('bottomRight'),
          value: LessonCardLessonTypePosition.bottomRight,
        ),
        AppRadioSelectorItem(
          title: Text('beforeBottomRightBlock'),
          value: LessonCardLessonTypePosition.beforeBottomRightBlock,
        ),
        AppRadioSelectorItem(
          title: Text('none'),
          value: LessonCardLessonTypePosition.none,
        ),
      ],
    );
  }
}
