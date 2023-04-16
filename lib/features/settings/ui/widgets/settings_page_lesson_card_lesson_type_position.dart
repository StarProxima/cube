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
          title: Text('afterTeacher'),
          description: Text('Расположение по умолчанию'),
          value: LessonCardLessonTypePosition.afterTeacher,
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
          title: Text('none'),
          value: LessonCardLessonTypePosition.none,
        ),
      ],
    );
  }
}
