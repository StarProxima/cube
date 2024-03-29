part of '../settings_page.dart';

class _SettingsPageLessonCardRecessDisplayCondition extends ConsumerWidget {
  const _SettingsPageLessonCardRecessDisplayCondition();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonCardRecessDisplayCondition = ref.watch(
      appSettingsStateHolder
          .select((value) => value.lessonCardRecessDisplayCondition),
    );

    final settingsNotifier = ref.read(appSettingsStateHolder.notifier);

    return AppRadioSelector<LessonCardRecessDisplayCondition>(
      label: const Text('Отображение таймера до начала занятия'),
      value: lessonCardRecessDisplayCondition,
      onSelect: (value) =>
          settingsNotifier.editLessonCardRecessDisplayCondition(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('Всегда'),
          description: Text('Выбор по умолчанию'),
          value: LessonCardRecessDisplayCondition.always,
        ),
        AppRadioSelectorItem(
          title: Text('Только перемены'),
          value: LessonCardRecessDisplayCondition.onlyRecessBetweenLessons,
        ),
        AppRadioSelectorItem(
          title: Text('Никогда'),
          value: LessonCardRecessDisplayCondition.never,
        ),
      ],
    );
  }
}
