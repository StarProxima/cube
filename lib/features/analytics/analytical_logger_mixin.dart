import 'package:appmetrica_plugin/appmetrica_plugin.dart';

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

  void settings({
    required String name,
    required String value,
    String? previousValue,
  }) {
    final Map<String, Object> attributes = {
      'value': value,
      if (previousValue != null) 'previousValue': previousValue,
    };

    event('settings', attributes);
  }
}
