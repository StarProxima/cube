import 'package:app_runner/app_runner.dart';
import 'package:cube_system/ui/main_app.dart';
import 'package:cube_system/ui/widgets/app_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/core/hive_initializer.dart';

void main() async {
  final widgetConfiguration = WidgetConfiguration(
    child: AppBuilder<void>(
      preInitialize: (binding) async {
        await Future.wait([
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
