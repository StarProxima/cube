// ignore_for_file: dead_code

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/event_pages/app_event_page.dart';

class UnimplementedFeatureEventPage extends ConsumerWidget {
  final String title;

  const UnimplementedFeatureEventPage({required this.title, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: AppEventPage(
        picture: Assets.brooklyn.productDevelopment1.svg(),
        // pictureMargin: const EdgeInsets.only(top: 128, bottom: 0),
        title: title,
        subTitle:
            'Приложение всё ещё находится в активной стадии разработки, поэтому некоторые функции ещё не доступны',
      ),
    );
  }
}
