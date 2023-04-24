import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cube_system/features/landing_page/state_holders/landing_page_index.dart';

final landingPageManager = Provider<LandingPageManager>((ref) {
  return LandingPageManager(
    pageIndex: ref.read(landingPageIndexStateHolder.notifier),
  );
});

class LandingPageManager {
  final StateController<int> pageIndex;
  LandingPageManager({
    required this.pageIndex,
  });

  void launchUri(Uri uri) {
    launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  void changePageIndex(int index) {
    pageIndex.state = index;
  }
}
