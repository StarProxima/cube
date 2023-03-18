import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/widgets/event_pages/app_event_page.dart';

class NotSelectedEventPage extends ConsumerWidget {
  const NotSelectedEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.askingQuestion3.svg(),
      title: 'Расписание не выбрано',
      subTitle: 'Выберите нужное расписание',
    );
  }
}
