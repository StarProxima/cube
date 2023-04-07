import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/landing_page/ui/widgets/landing_service_card.dart';

class LandingServicesPage extends ConsumerWidget {
  const LandingServicesPage({super.key});

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
            // Center(
            //   child: Assets.brooklyn.beingProductive3.svg(
            //     height: 280,
            //     width: 280,
            //   ),
            // ),
            // const SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Assets.brooklyn.managerDesk2.svg(),
                  Text(
                    'Доступно с любого устройства',
                    style: context.textStyles.smallSubTitle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            LandingServiceCard(
              title: 'Сайт',
              description:
                  'Основная платформа, просмотр расписания и удобный онлайн конструктор',
              linkName: 'cube.nlabs.su',
              uri: Uri.parse('https://cube.nlabs.su/welcome'),
            ),
            const SizedBox(height: 16),
            LandingServiceCard(
              title: 'Telegram Бот',
              description: 'Простой, удобный и функциональный бот в Telegram',
              linkName: 't.me/cubeservicebot',
              uri: Uri.parse('https://t.me/CubeServiceBot'),
            ),
            const SizedBox(height: 16),
            LandingServiceCard(
              title: 'Приложение',
              subTitle: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Android',
                    ),
                    const TextSpan(
                      text: ' / ',
                    ),
                    TextSpan(
                      text: 'iOS',
                      style: context.textStyles.smallSubTitle.copyWith(
                        color: context.colors.subduedText.withOpacity(0.65),
                      ),
                    ),
                    const TextSpan(
                      text: ' / ',
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
                  'Многофункциональное приложение для различных платформ (пока не доступно)',
              linkName: 'github.com/StarProxima/cube',
              uri: Uri.parse('https://github.com/StarProxima/cube'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
