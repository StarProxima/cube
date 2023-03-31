// ignore_for_file: dead_code

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
    // Есть доступ к прохождению опроса
    // TODO: Переделать на проверку наличия доступа к опросу
    const bool isSurveyAvailable = false;
    return Scaffold(
      body: AppEventPage(
        picture: Assets.brooklyn.smartPeople2.svg(),
        pictureMargin: const EdgeInsets.only(top: 128, bottom: 16),
        title: title,
        subTitle:
            'Вы можете помочь сделать это приложение лучше, пройдя опрос о функционале и пользовательском опыте',
        description: !isSurveyAvailable
            ? 'Это будет доступно для вас спустя некоторое время после использования приложения'
            : null,
        buttonText: isSurveyAvailable ? 'Пройти опрос' : null,
        onTap: isSurveyAvailable
            ? () {
                launchUrl(
                  Uri.parse(
                    '',
                  ),
                  mode: LaunchMode.externalApplication,
                );
              }
            : null,
      ),
    );
  }
}
