import 'package:cube_system/models/lesson_event/lesson_event.dart';
import 'package:cube_system/models/lesson_event/lesson_event_type.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class AppEventPage extends ConsumerWidget {
  final Widget? picture;
  final String? title;
  final String? subTitle;
  final String? description;

  const AppEventPage({
    this.picture,
    this.title,
    this.subTitle,
    this.description,
    super.key,
  });

  factory AppEventPage.fromEvent(LessonEvent event) {
    return AppEventPage(
      picture: _getPictureByType(event.type),
      title: event.title,
      subTitle: event.subTitle,
      description: event.description,
    );
  }

  static Widget? _getPictureByType(LessonEventType type) {
    switch (type) {
      case LessonEventType.holiday:
        return Assets.brooklyn.beingProductive3.svg();
      case LessonEventType.error:
        return Assets.brooklyn.noConnection4.svg();
      case LessonEventType.weekend:
        return Assets.brooklyn.rest3.svg();
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24, left: 36, right: 36),
            height: 300,
            width: 300,
            child: picture,
          ),
          Text(
            title ?? '',
            style: context.textStyles.largeTitle,
          ),
          const SizedBox(height: 8),
          Text(
            subTitle ?? '',
            style: context.textStyles.subTitle,
          ),
          const SizedBox(height: 8),
          Text(
            description ?? '',
            style: context.textStyles.subTitle,
          ),
        ],
      ),
    );
  }
}
