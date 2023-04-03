import 'dart:io';

import 'package:cube_system/features/navigation/router/app_router.dart';
import 'package:cube_system/source/app_scroll_behavior.dart';
import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';
import 'package:cube_system/styles/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:window_size/window_size.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('Куб.Расписание');
    setWindowMinSize(const Size(460, 380));
  }
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors.light;
    final appTextStyles = AppTextStyles.light;

    return DevicePreview(
      enabled: false,
      builder: (context) => MaterialApp.router(
        debugShowCheckedModeBanner: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
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
    );
  }
}
