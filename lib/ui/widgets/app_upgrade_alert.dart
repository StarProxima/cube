import 'package:advanced_in_app_review/advanced_in_app_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upgrader/upgrader.dart';

final _appcastConfigurationProvider = Provider<AppcastConfiguration>((ref) {
  return AppcastConfiguration(
    url:
        'https://raw.githubusercontent.com/StarProxima/cube_appcast/main/appcast.xml',
    supportedOS: ['android', 'ios', 'macos', 'windows'],
  );
});

class AppUpgradeAlert extends ConsumerStatefulWidget {
  final Widget child;

  const AppUpgradeAlert({super.key, required this.child});

  @override
  ConsumerState<AppUpgradeAlert> createState() => _AppUpgradeAlertState();
}

class _AppUpgradeAlertState extends ConsumerState<AppUpgradeAlert> {
  @override
  void initState() {
    AdvancedInAppReview()
        .setMinDaysBeforeRemind(7)
        .setMinDaysAfterInstall(2)
        .setMinLaunchTimes(4)
        .setMinSecondsBeforeShowDialog(30)
        .monitor();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              appcastConfig: appcastConfiguration,
            ),
            child: widget.child,
          );
        },
      ),
    );
  }
}
