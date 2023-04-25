import 'package:appmetrica_plugin/appmetrica_plugin.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:proxima_logger/proxima_logger.dart' as pr;

import 'package:cube_system/features/analytics/log_type.dart';

import 'package:cube_system/core/utils.dart';

mixin AnalyticalLoggerMixin on pr.ProximaLogger {
  Future<void> event(String name, [Map<String, Object>? attributes]) async {
    if (kIsMobile) {
      await AppMetrica.reportEventWithMap(name, attributes);
    }
  }

  void route({required String path, String? previousPath}) {
    final Map<String, Object> attributes = {
      'path': path,
      if (previousPath != null) 'previousPath': previousPath,
    };

    event('routing', attributes);

    final title = previousPath != null ? '$previousPath -> $path' : path;
    log(Log.route, title: title);
  }

  void launch({required Uri uri, required String launchFrom}) {
    final url = uri.origin + uri.path;
    final Map<String, Object> attributes = {
      'url': url,
      'launchFrom': launchFrom
    };

    event('launch', attributes);

    log(Log.info, title: 'Launch', message: url);
  }

  void searchTimetable(String query) {
    final Map<String, Object> attributes = {
      'query': query,
    };

    event('searchTimetable', attributes);
    log(Log.info, title: 'Search timetable', message: query);
  }

  void selectTimetable(TimetableInfo timetable) {
    final Map<String, Object> attributes = {
      'name': timetable.label,
      'type': timetable.type.label,
    };

    event('selectTimetable', attributes);
    log(Log.info, title: 'Select timetable', message: timetable);
  }

  void landingPassage({
    required bool isSkipSelectingTimetable,
  }) {
    final Map<String, Object> attributes = {
      'isSkipSelectingTimetable': isSkipSelectingTimetable,
    };

    event('landingPassage', attributes);
    log(Log.info, title: 'Landing passage', message: attributes);
  }

  Map<String, dynamic>? _lastSettingsMap;

  void setInitialSettings(AppSettings settings) {
    _lastSettingsMap = settings.toJson();

    event('settingsInital', _lastSettingsMap!.cast<String, Object>());
    log(Log.settings, title: 'Initial', message: _lastSettingsMap);
  }

  void changingSettings(AppSettings settings) {
    final settingsMap = settings.toJson();

    final Map<String, Object> attributes = {};

    for (final key in settingsMap.keys) {
      if (settingsMap[key] != _lastSettingsMap?[key]) {
        attributes[key] = settingsMap[key];
      }
    }

    _lastSettingsMap = settingsMap;

    if (attributes.isEmpty) return;

    event('settingsChange', attributes);
    log(Log.settings, title: 'Change', message: attributes);
  }
}
