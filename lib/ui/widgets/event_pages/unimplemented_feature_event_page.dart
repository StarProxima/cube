import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/event_pages/app_event_page.dart';
import 'package:url_launcher/url_launcher.dart';

class UnimplementedFeatureEventPage extends ConsumerWidget {
  final String title;

  const UnimplementedFeatureEventPage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.smartPeople2.svg(),
      pictureMargin: const EdgeInsets.only(top: 150),
      title: title,
      description:
          'Вы можете помочь нам сделать это приложение лучше, пройдя опрос',
      buttonText: 'Пройти опрос',
      onTap: () {
        launchUrl(
          Uri.parse(
            'https://docs.google.com/forms/u/0/d/e/1FAIpQLSeN9QwjzunPZn8hVqlvQv_1x00MUogMDxW0NxJcTQ8Wx-IrUQ',
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}
