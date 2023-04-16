import 'package:cube_system/features/settings/state_holders/app_settings_view_state_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector.dart';
import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item.dart';

import 'package:cube_system/features/settings/models/app_theme_enums.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _SettingsPage();
  }
}

class _SettingsPage extends ConsumerStatefulWidget {
  const _SettingsPage();

  @override
  ConsumerState<_SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<_SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(appSettingsViewStateHolder);
    final settingsNotifier = ref.read(appSettingsViewStateHolder.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Настройки',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AppRadioSelector(
              label: 'Цветовая тема для занятий',
              value: settings.lessonColorsMode,
              onSelect: (value) => settingsNotifier.editLessonColorsMode(value),
              items: const [
                AppRadioSelectorItem(
                  title: 'Куб',
                  description: 'Цветовая палитра по умолчанию',
                  value: AppLessonColorsMode.cube,
                ),
                AppRadioSelectorItem(
                  title: 'Проксима',
                  description: 'Цветовая палитра c более насыщенными цветами',
                  value: AppLessonColorsMode.proxima,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
