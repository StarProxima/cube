import 'package:cube_system/features/landing_page/ui/widgets/landing_services_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_features_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/app_button.dart';

import 'package:go_router/go_router.dart';

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
  final pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                isLastPage = index == 2;
              },
              children: const [
                LandingWelcomePage(),
                LandingFeaturesPage(),
                LandingServicesPage(),
              ],
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
            if (isLastPage) {
              context.go('/timetable');
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
        ),
      ),
    );
  }
}
