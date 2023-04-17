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
      onSelect: (value) => settingsNotifier.editLessonColorsMode(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('Cube'),
          description: Text('Цветовая палитра по умолчанию'),
          value: AppLessonColorsMode.cube,
        ),
        AppRadioSelectorItem(
          title: Text('Accent'),
          description: Text('Цветовая палитра c более насыщенными цветами'),
          value: AppLessonColorsMode.proxima,
        ),
      ],
    );
  }
}
