part of '../settings_page.dart';

class _SettingsPageLessonColors extends ConsumerWidget {
  const _SettingsPageLessonColors();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonColorsMode = ref.watch(
      appSettingsViewStateHolder.select((value) => value.lessonColorsMode),
    );

    final settingsNotifier = ref.read(appSettingsViewStateHolder.notifier);

    return AppRadioSelector<AppLessonColorsMode>(
      label: const Text('Цветовая тема для занятий'),
      value: lessonColorsMode,
      onSelect: (value) => settingsNotifier.editLessonColorsMode(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('Куб'),
          description: Text('Цветовая палитра по умолчанию'),
          value: AppLessonColorsMode.cube,
        ),
        AppRadioSelectorItem(
          title: Text('Проксима'),
          description: Text('Цветовая палитра c более насыщенными цветами'),
          value: AppLessonColorsMode.proxima,
        ),
      ],
    );
  }
}

class _ColorCard extends StatelessWidget {
  final Color? color;
  const _ColorCard(this.color);

  @override
  Widget build(BuildContext context) {
    const radius = 8;
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
