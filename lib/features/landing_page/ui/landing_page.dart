import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/ui/widgets/app_button.dart';
import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _LandingPage();
  }
}

class _LandingPage extends ConsumerStatefulWidget {
  const _LandingPage();

  @override
  ConsumerState<_LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<_LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 64),
                  FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "КУБ",
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
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AppButton(
          text: 'Вперед',
          isExpanded: true,
          onTap: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) {
                  return const TimetablePage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
