import 'package:flutter/material.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/app_event_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoConnectionEventPage extends ConsumerWidget {
  const NoConnectionEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.noConnection4.svg(),
      title: 'Ошибка соединения',
      subTitle: 'Не удалось подключиться к серверу',
      buttonText: 'Попробовать ещё раз',
      onTap: () {
        //TODO: implement this
      },
    );
  }
}
