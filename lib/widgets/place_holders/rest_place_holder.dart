import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';

class RestPlaceHolder extends ConsumerWidget {
  final String title;
  final String subTitle;

  const RestPlaceHolder({
    this.title = 'В этот день занятий нет',
    this.subTitle = 'Можно отдохнуть',
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 24, left: 36, right: 36),
          height: 300,
          width: 300,
          child: Assets.brooklyn.rest3.svg(),
        ),
        Text(
          title,
          style: context.textStyles.largeTitle,
        ),
        const SizedBox(height: 8),
        Text(
          subTitle,
          style: context.textStyles.subTitle,
        ),
      ],
    );
  }
}
