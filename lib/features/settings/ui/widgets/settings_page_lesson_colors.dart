part of '../settings_page.dart';

class _SettingsPageLessonColors extends ConsumerWidget {
  const _SettingsPageLessonColors();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonColorsMode = ref.watch(
      appSettingsViewStateHolder.select((value) => value.lessonColorsMode),
    );
    final settingsNotifier = ref.read(appSettingsViewStateHolder.notifier);

    final proxima = AppLessonColors.custom;

    return AppRadioSelector(
      label: const Text('Цветовая тема для занятий'),
      value: lessonColorsMode,
      onSelect: (value) => settingsNotifier.editLessonColorsMode(value),
      items: [
        const AppRadioSelectorItem(
          title: Text('Куб'),
          description: Text('Цветовая палитра по умолчанию'),
          value: AppLessonColorsMode.cube,
        ),
        AppRadioSelectorItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Проксима'),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: _ColorSheetCard(colors: proxima),
              ),
            ],
          ),
          description:
              const Text('Цветовая палитра c более насыщенными цветами'),
          value: AppLessonColorsMode.proxima,
        ),
      ],
    );
  }
}

class _ColorSheetCard extends StatelessWidget {
  final AppLessonColors colors;

  const _ColorSheetCard({required this.colors});

  @override
  Widget build(BuildContext context) {
    const radius = 8;
    return Center(
      child: SizedBox(
        height: radius * 2,
        width: radius + radius * 6,
        child: Stack(
          children: [
            Positioned(
              left: radius * 5,
              child: _ColorCard(colors.ksrs),
            ),
            Positioned(
              left: radius * 4,
              child: _ColorCard(colors.practice),
            ),
            Positioned(
              left: radius * 3,
              child: _ColorCard(colors.seminar),
            ),
            Positioned(
              left: radius * 2,
              child: _ColorCard(colors.additional),
            ),
            Positioned(
              left: radius * 1,
              child: _ColorCard(colors.laboratory),
            ),
            Positioned(
              left: radius * 0,
              child: _ColorCard(colors.lecture),
            ),
          ],
        ),
      ),
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
