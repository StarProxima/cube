part of '../settings_page.dart';

class _SettingsPageLessonColors extends ConsumerWidget {
  const _SettingsPageLessonColors();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonColorsMode = ref.watch(
      appSettingsStateHolder.select((value) => value.lessonColorsMode),
    );

    final settingsNotifier = ref.read(appSettingsStateHolder.notifier);

    return AppRadioSelector<AppLessonColorsMode>(
      label: const Text('Цветовая тема для занятий'),
      value: lessonColorsMode,
      onSelect: settingsNotifier.editLessonColorsMode,
      items: const [
        AppRadioSelectorItem(
          title: Text('Accent'),
          description: Text('Выбор по умолчанию'),
          value: AppLessonColorsMode.accent,
        ),
        AppRadioSelectorItem(
          title: Text('Cube'),
          description: Text('Оригинальная палитра'),
          value: AppLessonColorsMode.cube,
        ),
      ],
    );
  }
}
