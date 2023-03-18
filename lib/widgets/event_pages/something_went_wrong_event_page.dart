import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/widgets/event_pages/app_event_page.dart';

class SomethingWentWrongEventPage extends ConsumerWidget {
  const SomethingWentWrongEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.somethingWentWrong2.svg(),
      title: 'Что-то пошло не так',
      subTitle: 'Обратитесь в поддержку',
    );
  }
}
