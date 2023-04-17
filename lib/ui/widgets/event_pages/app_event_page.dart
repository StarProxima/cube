import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/app_button.dart';

import 'package:cube_system/ui/widgets/short_fade_animated_widget.dart';

class AppEventPage extends ConsumerWidget {
  final Widget? picture;
  final String? title;
  final String? subTitle;
  final String? description;
  final String? buttonText;
  final VoidCallback? onTap;

  final EdgeInsets? pictureMargin;

  const AppEventPage({
    this.picture,
    this.title,
    this.subTitle,
    this.description,
    this.buttonText,
    this.onTap,
    this.pictureMargin,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const margin = EdgeInsets.only(top: 24);
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: pictureMargin != null
                          ? margin.add(pictureMargin!)
                          : margin,
                      child: ShortFadeAnimatedWidget(
                        size: 300,
                        child: picture,
                      ),
                    ),
                    Text(
                      title ?? '',
                      style: context.textStyles.largeTitle,
                      textAlign: TextAlign.center,
                    ),
                    if (subTitle != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          subTitle ?? '',
                          style: context.textStyles.subTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    if (description != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          description ?? '',
                          style: context.textStyles.subTitle.copyWith(
                            color: context.colors.subduedText,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    if (buttonText != null || onTap != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: AppButton(
                          text: buttonText,
                          onTap: onTap,
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
