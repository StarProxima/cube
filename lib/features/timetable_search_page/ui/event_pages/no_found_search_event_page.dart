import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/app_event_page.dart';

class NoFoundSearchEventPage extends ConsumerWidget {
  const NoFoundSearchEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.pageNotFound1.svg(),
      pictureMargin: const EdgeInsets.only(bottom: 16),
      title: 'Ничего не найдено',
      subTitle: 'Попробуйте другой запрос',
    );
  }
}
