import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/event_pages/app_event_page.dart';

class KsrsEventPage extends ConsumerWidget {
  const KsrsEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.rest3.svg(),
      title: 'КСРС',
      subTitle: 'Контролируемая самостоятельная работа студентов',
    );
  }
}
