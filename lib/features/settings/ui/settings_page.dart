import 'package:cube_system/features/settings/state_holders/app_settings_view_state_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector.dart';
import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode.dart';

part 'widgets/settings_page_lesson_colors.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Настройки',
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _SettingsPageLessonColors(),
          ],
        ),
      ),
    );
  }
}
