import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

final _appcastConfigurationProvider = Provider<AppcastConfiguration>((ref) {
  const appcastURL =
      'https://raw.githubusercontent.com/StarProxima/cube_appcast/main/appcast.xml';

  return AppcastConfiguration(
    url: appcastURL,
    supportedOS: ['android', 'windows'],
  );
});

class AppUpgradeAlert extends ConsumerWidget {
  final Widget child;

  const AppUpgradeAlert({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      onGenerateRoute: (route) => MaterialPageRoute(
        builder: (context) {
          final isFirstRun = !ref.exists(_appcastConfigurationProvider);
          final appcastConfiguration = ref.watch(_appcastConfigurationProvider);

          return UpgradeAlert(
            upgrader: Upgrader(
              enable: isFirstRun,
              countryCode: 'ru',
              debugLogging: true,
              debugDisplayAlways: true,
              appcastConfig: appcastConfiguration,
              dialogStyle: UpgradeDialogStyle.material,
            ),
            child: child,
          );
        },
      ),
    );
  }
}
