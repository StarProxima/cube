import 'package:app_runner/app_runner.dart';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:cube_system/ui/main_app.dart';
import 'package:cube_system/ui/widgets/app_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:cube_system/core/hive_initializer.dart';

void main() async {
  final widgetConfiguration = WidgetConfiguration(
    child: AppBuilder<void>(
      preInitialize: (binding) async {
        await dotenv.load();
        await Future.wait([
          AppMetrica.activate(
            AppMetricaConfig(dotenv.env['APP_METRICA_API_KEY']!),
          ),
          HiveInitializer.init(),
          Future.delayed(const Duration(milliseconds: 2500))
        ]);
      },
      builder: (context, snapshot, _) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const ProviderScope(child: MainApp());
        }
        return const AppSplash();
      },
    ),
    onFlutterError: (errorDetails) {},
  );

  final ZoneConfiguration zoneConfiguration = ZoneConfiguration(
    onZoneError: (Object error, StackTrace stackTrace) {},
  );

  appRunner(
    RunnerConfiguration.guarded(
      widgetConfig: widgetConfiguration,
      zoneConfig: zoneConfiguration,
    ),
  );
}
