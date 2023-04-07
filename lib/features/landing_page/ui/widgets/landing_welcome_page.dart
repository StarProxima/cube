import 'dart:ui';

import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class LandingWelcomePage extends ConsumerStatefulWidget {
  const LandingWelcomePage({super.key});

  @override
  ConsumerState<LandingWelcomePage> createState() => _LandingWelcomePageState();
}

class _LandingWelcomePageState extends ConsumerState<LandingWelcomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.reset();
    _controller.forward();

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
              child: FadeTransition(
                opacity: CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeInOut,
                ),
                child: Assets.rive.shapes.rive(
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
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
                      Row(
                        children: [
                          FadeTransition(
                            opacity: CurvedAnimation(
                              parent: _controller,
                              curve: Curves.easeInOut,
                            ),
                            child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1, 0),
                                end: const Offset(0, 0),
                              ).animate(
                                CurvedAnimation(
                                  parent: _controller,
                                  curve: Curves.easeInOutBack,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 96,
                                  width: 96,
                                  child: Assets.icons.cubeIcon.image(),
                                ),
                              ),
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
                                    style:
                                        context.textStyles.largeTitle.copyWith(
                                      fontSize: 32,
                                      color: context.colors.text,
                                    ),
                                  ),
                                  Text(
                                    ".",
                                    style:
                                        context.textStyles.largeTitle.copyWith(
                                      fontSize: 32,
                                      color: context.colors.text,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Расписание",
                                style: context.textStyles.largeTitle.copyWith(
                                  fontSize: 32,
                                  color: context.colors.text,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 48),
                      Text(
                        "Организуйте свою академическую жизнь c современным электронным расписанием: актуальность, легкий доступ и приятный дизайн для студентов и преподавателей.",
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
