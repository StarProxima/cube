import 'package:cube_system/core/hive_initializer.dart';
import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/features/settings/state_holders/app_settings_state_holder.dart';

class AppSplashScreen extends ConsumerStatefulWidget {
  const AppSplashScreen({super.key});

  @override
  ConsumerState<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends ConsumerState<AppSplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController logoController;
  late final AnimationController footerController;

  void push() async {
    await Future.wait([
      HiveInitializer.init(),
      Future.delayed(const Duration(milliseconds: 2000))
    ]);

    final landingPassed = ref.read(appSettingsStateHolder).landingPassed;
    if (mounted) {
      context.go(landingPassed ? '/timetable' : '/landing');
    }
  }

  @override
  void initState() {
    super.initState();
    logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    footerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    push();
  }

  @override
  Widget build(BuildContext context) {
    logoController.forward();
    footerController.forward();
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ScaleTransition(
                scale: CurvedAnimation(
                  parent: logoController,
                  curve: Curves.easeInOutCirc,
                ),
                child: Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.icons.cubeIcon.provider(),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: const Offset(0, 0),
              ).animate(
                CurvedAnimation(
                  parent: footerController,
                  curve: Curves.easeInOut,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Developed by NullExp'),
                    // SizedBox(height: 4),
                    // Text('Audit by '),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
