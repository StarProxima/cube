import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

class TimetablePageHeaderTimetableInfo extends ConsumerWidget {
  const TimetablePageHeaderTimetableInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timetable = ref.watch(selectedTimetableStateHolder);

    final labelTextStyle =
        timetable == null || timetable.type == TimetableType.teacher
            ? context.textStyles.label
            : context.textStyles.largeTitle;

    return InkWell(
      onTap: () {
        context.go('/timetable/search');
      },
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    timetable?.label ?? 'Расписание',
                    style: labelTextStyle,
                  ),
                ),
                SizedBox(
                  height: 16,
                  child: Text(
                    String.fromCharCode(
                      Icons.arrow_drop_down_rounded.codePoint,
                    ),
                    style: labelTextStyle.copyWith(
                      fontFamily: Icons.arrow_drop_down_rounded.fontFamily,
                      package: Icons.arrow_drop_down_rounded.fontPackage,
                      fontSize: 20,
                      height: 0.95,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 1),
            Text(
              timetable?.type.label ?? 'Не выбрано',
              style: context.textStyles.smallSubTitle.copyWith(
                fontSize: 10,
                color: context.colors.subduedText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
