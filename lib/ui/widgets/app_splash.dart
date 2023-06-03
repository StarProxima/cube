import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/styles/app_theme.dart';

import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class AppSplash extends ConsumerStatefulWidget {
  const AppSplash({super.key});

  @override
  ConsumerState<AppSplash> createState() => _AppSplashState();
}

class _AppSplashState extends ConsumerState<AppSplash>
    with TickerProviderStateMixin {
  late final AnimationController logoController;
  late final AnimationController footerController;

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
  }

  @override
  void dispose() {
    logoController.dispose();
    footerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logoController.forward();
    footerController.forward();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeByStyles(
        colors: AppColors.light,
        textStyles: AppTextStyles.light,
      ),
      home: Builder(
        builder: (context) {
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
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        '© 2023 NullExp Inc.',
                        style: context.textStyles.smallSubTitle.copyWith(
                          color: context.colors.subduedText,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
