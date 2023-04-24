import 'package:appmetrica_plugin/appmetrica_plugin.dart';

import 'package:cube_system/features/settings/models/app_settings/app_settings.dart';

mixin AnalyticalLoggerMixin {
  Future<void> event(String name, [Map<String, Object>? attributes]) async {
    await AppMetrica.reportEventWithMap(name, attributes);
  }

  void route({required String path, String? previousPath}) {
    final Map<String, Object> attributes = {
      'path': path,
      if (previousPath != null) 'previousPath': previousPath,
    };

    event('routing', attributes);
  }

  void launch({required String url, required String launchFromWidget}) {
    final Map<String, Object> attributes = {
      'url': url,
      'launchFromWidget': launchFromWidget,
    };

    event('launch', attributes);
  }

  Map<String, dynamic>? _lastSettingsMap;

  void setInitialSettings(AppSettings settings) =>
      _lastSettingsMap = settings.toJson();

  void settings(AppSettings settings) {
    final settingsMap = settings.toJson();

    final Map<String, Object> attributes = {};

    for (final key in settingsMap.keys) {
      if (settingsMap[key] != _lastSettingsMap?[key]) {
        attributes[key] = settingsMap[key];
      }
    }

    _lastSettingsMap = settingsMap;

    if (attributes.isEmpty) return;

    event('settings', attributes);
  }
}
