import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';
import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/ui_kit/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/fade_animated_widget.dart';
import 'package:go_router/go_router.dart';

class LandingLastPage extends ConsumerWidget {
  const LandingLastPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsNotifier = ref.read(appSettingsStateHolder.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 100),
            FadeAnimatedWidget(
              size: 300,
              child: Assets.brooklyn.welcome3.svg(),
            ),
            Text(
              'Вы почти у цели',
              style: context.textStyles.largeTitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Осталось только выбрать расписание',
              style: context.textStyles.subTitle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            AppButton(
              text: 'Выбрать расписание',
              isExpanded: true,
              onTap: () {
                settingsNotifier.editLandingPassed(true);
                context.go('/timetable/search');
              },
            ),
            const SizedBox(height: 8),
            AppButton(
              text: 'Пропустить',
              isExpanded: true,
              style: AppButtonStyle.secondary,
              onTap: () {
                settingsNotifier.editLandingPassed(true);
                context.go('/timetable');
              },
            ),
          ],
        ),
      ),
    );
  }
}
