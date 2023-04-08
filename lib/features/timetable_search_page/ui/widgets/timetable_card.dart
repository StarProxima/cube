import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';

class TimetableCard extends ConsumerWidget {
  final TimetableInfo timetable;

  final VoidCallback onTap;

  const TimetableCard({
    required this.timetable,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color color;
    final Widget icon;

    switch (timetable.type) {
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
            padding: const EdgeInsets.all(8),
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
                    children: [
                      Text(
                        timetable.label,
                        style: context.textStyles.label,
                      ),
                      const SizedBox(height: 1),
                      Text(
                        timetable.type.label,
                        style: context.textStyles.smallSubTitle.copyWith(
                          color: context.colors.subduedText,
                        ),
                      ),
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
