import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';

import 'package:cube_system/features/timetable_search_page/models/timetable_search_info.dart';

class TimetableSearchInfoCard extends ConsumerWidget {
  final TimetableSearchInfo timetable;

  final VoidCallback onTap;

  const TimetableSearchInfoCard({
    required this.timetable,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color color;
    final Widget icon;

    switch (timetable.info.type) {
      case TimetableType.group:
        color = const Color(0xFF1aaf5c);
        icon = Icon(
          Icons.people_alt_rounded,
          color: context.colors.white,
          size: 18,
        );
        break;
      case TimetableType.teacher:
        color = const Color(0xFF488aff);
        icon = Icon(
          Icons.person,
          color: context.colors.white,
          size: 18,
        );
        break;
      case TimetableType.place:
        color = const Color(0xFFfa601f);
        icon = Padding(
          padding: const EdgeInsets.only(left: 1, top: 1),
          child: Icon(
            Icons.sell,
            color: context.colors.white,
            size: 18,
          ),
        );
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 2),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: SizedBox(
              height: 38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.75),
                            shape: BoxShape.circle,
                          ),
                          child: icon,
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                timetable.label ?? timetable.info.label,
                                style: context.textStyles.label,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 1),
                              Text(
                                timetable.info.type.label,
                                style:
                                    context.textStyles.smallSubTitle.copyWith(
                                  color: context.colors.subduedText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (timetable.info.type.isGroup)
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${timetable.groupInfo!.faculty}, ${timetable.groupInfo!.course} курс',
                              style: context.textStyles.smallSubTitle.copyWith(
                                color: context.colors.subduedText,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '${timetable.groupInfo!.direction}',
                              style: context.textStyles.smallSubTitle.copyWith(
                                color: context.colors.subduedText,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
