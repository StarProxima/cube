import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/features/landing_page/ui/widgets/landing_platform_card.dart';

class LandingCubeSystemPage extends ConsumerWidget {
  const LandingCubeSystemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            LandingPlatformCard(
              title: 'Web Site',
              description: 'Web версия с конструктором расписания',
              linkName: 'cube.nlabs.su',
              uri: Uri.parse('https://cube.nlabs.su/welcome'),
            ),
            const SizedBox(height: 16),
            LandingPlatformCard(
              title: 'Telegram Bot',
              description: 'Простой, удобный и функциональный бот в Telegram',
              linkName: 't.me/cubeservicebot',
              uri: Uri.parse('https://t.me/CubeServiceBot'),
            ),
            const SizedBox(height: 16),
            LandingPlatformCard(
              title: 'Cube App',
              subTitle: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Android / iOS / ',
                    ),
                    TextSpan(
                      text: 'Web',
                      style: context.textStyles.smallSubTitle.copyWith(
                        color: context.colors.subduedText.withOpacity(0.65),
                      ),
                    ),
                    const TextSpan(
                      text: ' / ',
                    ),
                    TextSpan(
                      text: 'Desktop',
                      style: context.textStyles.smallSubTitle.copyWith(
                        color: context.colors.subduedText.withOpacity(0.65),
                      ),
                    ),
                  ],
                ),
              ),
              description:
                  'Многофункциональное приложение для различных платформ',
              linkName: 'starproxima.dev/cube',
              uri: Uri.parse('https://starproxima.dev/cube'),
            ),
            const SizedBox(height: 24),
            const SizedBox(height: 64),
            Center(
              child: Assets.brooklyn.smartPeople2.svg(
                height: 280,
                width: 280,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
