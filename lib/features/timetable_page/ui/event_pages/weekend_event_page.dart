import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

import 'package:cube_system/ui/widgets/app_event_page.dart';

class WeekendEventPage extends ConsumerWidget {
  const WeekendEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.rest3.svg(),
      title: 'В этот день пар нет',
      subTitle: 'Можно отдохнуть',
      // description: 'Длинное описание эвента ' * 10,
    );
  }
}
