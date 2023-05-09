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
            Transform.translate(
              offset: const Offset(0, -150),
              child: FadeTransition(
                opacity: CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeInOut,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Assets.rive.shapes.rive(
                    antialiasing: false,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 110, sigmaY: 110),
                child: const SizedBox(),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: SafeArea(
                  child: Container(
                    alignment: const Alignment(0, -0.25),
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      children: [
                        const SizedBox(height: 36),
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
                                      style: context.textStyles.largeTitle
                                          .copyWith(
                                        fontSize: 32,
                                        color: context.colors.text,
                                      ),
                                    ),
                                    Text(
                                      ".",
                                      style: context.textStyles.largeTitle
                                          .copyWith(
                                        fontSize: 32,
                                        color: context.colors.text,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Расписание',
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
                          'Cовременный сервис учебного расписания для студентов, преподавателей и всех желающих, предоставляющий удобный и быстрый доступ, где бы вы ни находились.',
                          style: context.textStyles.subTitle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 92),
                      ],
                    ),
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
