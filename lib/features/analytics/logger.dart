import 'package:proxima_logger/proxima_logger.dart';

import 'package:cube_system/features/analytics/analytical_logger_mixin.dart';

final logger = AppLogger();

class AppLogger extends ProximaLogger with AnalyticalLoggerMixin {
  AppLogger() : super();
}
