import 'package:cube_system/ui/widgets/app_overlay_style_wrapper.dart';
import 'package:cube_system/ui/widgets/fade_animated_widget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/app_scroll_behavior.dart';
import 'package:cube_system/features/navigation/router/app_router.dart';
import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';
import 'package:cube_system/styles/app_theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors.light;
    final appTextStyles = AppTextStyles.light;

    return AppOverlayStyleWrapper(
      child: DevicePreview(
        enabled: false,
        builder: (context) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: (context, child) => Scaffold(
            resizeToAvoidBottomInset: false,
            body: FadeAnimatedWidget(
              child: DevicePreview.appBuilder(context, child),
            ),
          ),
          scrollBehavior: AppScrollBehavior(),
          title: 'Куб.Расписание',
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ru'),
            Locale('en'),
          ],
          themeMode: ThemeMode.light,
          theme: AppTheme.themeByStyles(
            colors: appColors,
            textStyles: appTextStyles,
          ),
          routerConfig: ref.watch(routerProvider),
        ),
      ),
    );
  }
}
