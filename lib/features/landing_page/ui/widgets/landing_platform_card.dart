import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPlatformCard extends ConsumerWidget {
  final String title;
  final Text? subTitle;
  final String? description;
  final String linkName;
  final Uri uri;

  const LandingPlatformCard({
    required this.title,
    this.subTitle,
    this.description,
    required this.linkName,
    required this.uri,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.card,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            launchUrl(uri);
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(width: 16),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Assets.icons.roundedCubeLogo.svg(
                                  height: 36,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  title,
                                  style: context.textStyles.smallLabel.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            if (subTitle != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: DefaultTextStyle(
                                  style:
                                      context.textStyles.smallSubTitle.copyWith(
                                    color: context.colors.text,
                                  ),
                                  child: subTitle!,
                                ),
                              ),
                            if (description != null)
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  description!,
                                  style:
                                      context.textStyles.smallSubTitle.copyWith(
                                    color: context.colors.text,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 8),
                            Text(
                              linkName,
                              style: context.textStyles.smallSubTitle.copyWith(
                                color: context.colors.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
