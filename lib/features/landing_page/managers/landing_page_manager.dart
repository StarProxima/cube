import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final landingPageManager = Provider<LandingPageManager>((ref) {
  return LandingPageManager();
});

class LandingPageManager {
  LandingPageManager();

  void launchUri(Uri uri) {
    launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}
