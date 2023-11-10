import 'package:advanced_in_app_review/advanced_in_app_review.dart';
import 'package:cube_system/features/analytics/logger.dart';
import 'package:cube_system/features/landing_page/ui/widgets/git_info_card.dart';
import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/ui_kit/app_button.dart';
import 'package:cube_system/ui/widgets/app_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector.dart';
import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item.dart';

import 'package:cube_system/features/settings/models/app_lesson_colors_mode/app_lesson_colors_mode.dart';

import 'package:cube_system/features/settings/models/lesson_card_lesson_type_position/lesson_card_lesson_type_position.dart';

import 'package:cube_system/features/settings/models/lesson_card_recess_display_condition/lesson_card_recess_display_condition.dart';

import 'package:cube_system/features/settings/state_holders/package_info_state_holder.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cube_system/core/secret/secret.dart';

part 'widgets/settings_page_lesson_colors.dart';
part 'widgets/settings_page_lesson_card_lesson_type_position.dart';
part 'widgets/settings_page_lesson_card_recess_display_condition.dart';
part 'widgets/settings_page_app_info.dart';

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
        title: const Text('Настройки'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const GitInfoCard(launchFrom: 'Settings'),
            const SizedBox(height: 20),
            const _SettingsPageLessonColors(),
            const SizedBox(height: 20),
            const _SettingsPageLessonCardLessonTypePosition(),
            const SizedBox(height: 20),
            const _SettingsPageLessonCardRecessDisplayCondition(),
            const SizedBox(height: 20),
            AppButton(
              text: 'О сервисе',
              isExpanded: true,
              rightIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
              style: AppButtonStyle.secondary,
              onTap: () {
                context.go('/landing');
              },
            ),
            const SizedBox(height: 8),
            AppButton(
              text: 'Поддержка',
              isExpanded: true,
              rightIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
              style: AppButtonStyle.primary,
              onTap: () {
                final uri = Uri.parse('https://t.me/CubeServiceOfficial');
                launchUrl(
                  uri,
                  mode: LaunchMode.externalApplication,
                );
                logger.launch(uri: uri, launchFrom: 'Settings');
              },
            ),
            const SizedBox(height: 8),
            Text(
              'Если заметили неточности в расписании или у вас есть предложения по улучшению, обращайтесь в поддержку.',
              style: context.textStyles.smallSubTitle.copyWith(
                color: context.colors.subduedText,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const _SettingsPageAppInfo(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
