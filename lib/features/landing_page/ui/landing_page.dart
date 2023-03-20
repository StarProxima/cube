import 'package:cube_system/features/timetable_page/ui/timetable_page.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

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
      body: Stack(
        children: [
          // Positioned(
          //   left: 100,
          //   top: 10,
          //   child: Assets.images.spline.image(
          //     height: 200,
          //   ),
          // ),
          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          //     child: const SizedBox(),
          //   ),
          // ),

          // // Assets.brooklyn.askingQuestion3.svg(),
          // Assets.rive.shapes.rive(),

          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          //     child: const SizedBox(),
          //   ),
          // ),

          AnimatedPositioned(
            top: 0,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 260),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Куб.\nРасписание",
                            style: context.textStyles.largeTitle.copyWith(
                              fontSize: 50,
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "Организуйте свою академическую жизнь c современным электронным расписанием: легкий доступ, приятный дизайн и заметки для студентов и преподавателей.",
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 2),
                    Center(
                      child: Assets.brooklyn.smartPeople2.svg(
                        height: 280,
                        width: 280,
                      ),
                    ),
                    const Spacer(flex: 3),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24, top: 8),
                      child: AppButton(
                        text: 'Вперед',
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
                    Column(
                      children: const [
                        // const Padding(
                        //   padding: EdgeInsets.only(bottom: 24, top: 8),
                        //   child: Text(
                        //     "Получайте подробную информацию о каждом занятии: просматривайте расписание занятий, узнавайте о преподавателях и аудиториях, получайте доступ к материалам для занятий и многое другое.",
                        //   ),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
