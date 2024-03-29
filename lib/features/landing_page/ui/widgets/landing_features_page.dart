import 'package:cube_system/features/landing_page/ui/widgets/landing_feature_card.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/ui/widgets/fade_animated_widget.dart';

class LandingFeaturesPage extends ConsumerWidget {
  const LandingFeaturesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  FadeAnimatedWidget(
                    size: 185,
                    child: Assets.brooklyn.virtualReality4.svg(),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Основные особенности сервиса',
                    style: context.textStyles.smallSubTitle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            LandingFeatureCard(
              icon: const Icon(Icons.calendar_today_outlined),
              color: const Color(0xFF1aaf5c).withOpacity(0.5),
              title: 'Расписание по дням',
              description:
                  'Переключайтесь между днями или неделями от начала и до конца семестра',
            ),
            const SizedBox(height: 16),
            LandingFeatureCard(
              icon: const Icon(Icons.update),
              color: const Color.fromARGB(255, 255, 163, 72).withOpacity(0.65),
              title: 'Актуальность',
              description:
                  'Просматривайте актуальное расписание на любой день недели',
            ),
            const SizedBox(height: 16),
            LandingFeatureCard(
              icon: const Icon(Icons.rocket_launch_outlined),
              color: const Color(0xFFc90505).withOpacity(0.5),
              title: 'Динамичность',
              description:
                  'Получайте информацию о времени до начала и конца занятий',
            ),
            const SizedBox(height: 16),
            LandingFeatureCard(
              icon: const Icon(Icons.devices_rounded),
              color: const Color(0xFF488aff).withOpacity(0.65),
              title: 'Мультиплатформенность',
              description: 'Просматривайте расписание с различных устройств',
            ),
            const SizedBox(height: 92),
          ],
        ),
      ),
    );
  }
}
