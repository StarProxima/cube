import 'package:cube_system/features/landing_page/ui/widgets/landing_availability_page.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/app_button.dart';

import 'package:cube_system/features/navigation/ui/navigation_page.dart';

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
                isLastPage = index == 1;
              },
              children: const [
                LandingWelcomePage(),
                LandingAvailabilityPage(),
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
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (context) {
                    return const NavigationPage();
                  },
                ),
              );
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
