import 'package:cube_system/features/landing_page/ui/widgets/landing_last_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_services_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_features_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/app_button.dart';

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
                isLastPage = index == 3;
                setState(() {});
              },
              children: const [
                LandingWelcomePage(),
                LandingFeaturesPage(),
                LandingServicesPage(),
                LandingLastPage(),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: isLastPage
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: AppButton(
                text: 'Вперед',
                isExpanded: true,
                onTap: () {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
    );
  }
}
