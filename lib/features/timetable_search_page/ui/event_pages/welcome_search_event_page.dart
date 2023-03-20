import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/app_event_page.dart';

class WelcomeSearchEventPage extends ConsumerWidget {
  const WelcomeSearchEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.findAWay3.svg(),
      pictureMargin: const EdgeInsets.only(bottom: 16),
      title: 'Начните поиск',
      subTitle: 'Введите группу, преподователя или аудиторию',
    );
  }
}
