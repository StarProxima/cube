import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:cube_system/core/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:proxima_logger/proxima_logger.dart' as pr;

import 'package:cube_system/features/analytics/analytical_logger_mixin.dart';

import 'package:cube_system/features/analytics/log_type.dart';

final logger = AppLogger();

class AppLogger extends pr.ProximaLogger with AnalyticalLoggerMixin {
  AppLogger()
      : super(
          settings: const pr.LogSettings(),
          typeSettings: {
            Log.route: const pr.LogSettings(
              logParts: [],
              printEmoji: false,
              bottomBorder: false,
              leftBorder: false,
            ),
            Log.settings: const pr.LogSettings(
              logParts: [pr.LogPart.message],
            ),
          },
        );

  void error(Object error, StackTrace stackTrace) {
    if (kIsMobile) {
      AppMetrica.reportError(
        errorDescription: AppMetricaErrorDescription.fromObjectAndStackTrace(
          error,
          stackTrace,
        ),
      );
    }

    log(
      Log.error,
      error: error,
      stack: stackTrace,
    );
  }

  void flutterError(FlutterErrorDetails details) {
    if (kIsMobile) {
      AppMetrica.reportError(
        message: null,
        errorDescription:
            AppMetricaErrorDescription.fromFlutterErrorDetails(details),
      );
    }

    log(
      Log.error,
      title: details.summary.toString(),
      error: details.exception,
      stack: details.stack,
    );
  }
}
