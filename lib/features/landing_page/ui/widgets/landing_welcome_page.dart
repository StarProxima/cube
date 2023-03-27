import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class LandingWelcomePage extends ConsumerWidget {
  const LandingWelcomePage({super.key});

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
            const SizedBox(height: 24),
            FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Куб",
                        style: context.textStyles.largeTitle.copyWith(
                          fontSize: 56,
                          color: context.colors.primary,
                        ),
                      ),
                      Text(
                        ".",
                        style: context.textStyles.largeTitle.copyWith(
                          fontSize: 56,
                          color: context.colors.text,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Расписание",
                    style: context.textStyles.largeTitle.copyWith(
                      fontSize: 56,
                      color: context.colors.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Организуйте свою академическую жизнь c современным электронным расписанием: легкий доступ, приятный дизайн и заметки для студентов и преподавателей.",
              style: context.textStyles.subTitle.copyWith(),
            ),
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
