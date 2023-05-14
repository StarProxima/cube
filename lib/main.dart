import 'package:app_runner/app_runner.dart';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:cube_system/ui/main_app.dart';
import 'package:cube_system/ui/widgets/app_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:cube_system/core/hive_initializer.dart';

import 'package:cube_system/features/analytics/logger.dart';

import 'package:cube_system/core/utils.dart';
import 'package:window_size/window_size.dart';

void main() async {
  final widgetConfiguration = WidgetConfiguration(
    child: AppBuilder<void>(
      preInitialize: (binding) async {
        if (kIsDesktop) {
          setWindowTitle('Куб.Расписание');
          setWindowMinSize(const Size(460, 380));
          setWindowMaxSize(const Size.fromWidth(700));
        }

        await dotenv.load();
        await Future.wait([
          if (kIsMobile)
            AppMetrica.activate(
              AppMetricaConfig(dotenv.env['APP_METRICA_API_KEY']!),
            ),
          HiveInitializer.init(),
          Future.delayed(const Duration(milliseconds: 5500))
        ]);
      },
      builder: (context, snapshot, _) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const AppSplash();
        }
        return const ProviderScope(child: MainApp());
      },
    ),
    onFlutterError: logger.flutterError,
  );

  final ZoneConfiguration zoneConfiguration = ZoneConfiguration(
    onZoneError: logger.error,
  );

  appRunner(
    RunnerConfiguration.guarded(
      widgetConfig: widgetConfiguration,
      zoneConfig: zoneConfiguration,
    ),
  );
}
