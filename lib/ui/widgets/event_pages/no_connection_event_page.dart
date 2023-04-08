import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/event_pages/app_event_page.dart';

class NoConnectionEventPage extends ConsumerWidget {
  final VoidCallback onTap;
  const NoConnectionEventPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.noConnection4.svg(),
      pictureMargin: const EdgeInsets.only(bottom: 16),
      title: 'Ошибка соединения',
      subTitle: 'Не удалось подключиться к серверу',
      buttonText: 'Попробовать ещё раз',
      onTap: onTap,
    );
  }
}
