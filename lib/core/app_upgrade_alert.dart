import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

final _appcastConfigurationProvider = Provider<AppcastConfiguration>((ref) {
  const appcastURL =
      'https://raw.githubusercontent.com/StarProxima/cube_appcast/main/appcast.xml';

  return AppcastConfiguration(url: appcastURL, supportedOS: ['android']);
});

class AppUpgradeAlert extends ConsumerWidget {
  final Widget child;

  const AppUpgradeAlert({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appcastConfiguration = ref.watch(_appcastConfigurationProvider);

    return Navigator(
      onGenerateRoute: (route) => MaterialPageRoute(
        builder: (context) => UpgradeAlert(
          upgrader: Upgrader(
            countryCode: 'RU',
            debugLogging: true,
            debugDisplayAlways: true,
            appcastConfig: appcastConfiguration,
          ),
          child: child,
        ),
      ),
    );
  }
}
