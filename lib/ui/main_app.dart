import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

    // ref.listen(selectedTimetable, (previous, next) {
    //   print(next);
    //   Future(() async {
    //     final box = await Hive.openBox('timetables');

    //     await box.put('selectedTimetable', next);
    //   });
    // });

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: appColors.background,
        // iOS only
        statusBarBrightness: Brightness.light,
      ),
      child: DevicePreview(
        enabled: false,
        builder: (context) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
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
      ),
    );
  }
}