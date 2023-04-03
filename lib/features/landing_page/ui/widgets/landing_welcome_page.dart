import 'dart:ui';

import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class LandingWelcomePage extends ConsumerWidget {
  const LandingWelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            // Positioned(
            //   top: 0,
            //   left: 100,
            //   child: Transform.translate(
            //     offset: const Offset(0, -230),
            //     child: Transform.rotate(
            //       angle: 1.4,
            //       child: Container(
            //         height: 350,
            //         width: 350,
            //         decoration: const BoxDecoration(
            //           color: Color.fromARGB(255, 151, 207, 255),
            //           shape: BoxShape.circle,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Transform.translate(
              offset: const Offset(-0, -150),
              child: SizedBox(
                child: Assets.rive.shapes.rive(
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 130, sigmaY: 130),
                child: const SizedBox(),
              ),
            ),

            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 196),
                      FittedBox(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Assets.icons.cubeIcon.image(
                                height: 96,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Куб",
                                      style: context.textStyles.largeTitle
                                          .copyWith(
                                        fontSize: 36,
                                        color: context.colors.text,
                                      ),
                                    ),
                                    Text(
                                      ".",
                                      style: context.textStyles.largeTitle
                                          .copyWith(
                                        fontSize: 36,
                                        color: context.colors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Расписание",
                                  style: context.textStyles.largeTitle.copyWith(
                                    fontSize: 36,
                                    color: context.colors.text,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 48),
                      Text(
                        "Организуйте свою академическую жизнь c современным электронным расписанием: удобнылегкий доступ, приятный дизайн и заметки для студентов и преподавателей.",
                        style: context.textStyles.subTitle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
