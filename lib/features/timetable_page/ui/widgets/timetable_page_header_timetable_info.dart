import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_page/state_holders/saved_timetables.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/widgets/app_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:cube_system/features/timetable_page/state_holders/selected_timetable.dart';

class TimetablePageHeaderTimetableInfo extends ConsumerWidget {
  const TimetablePageHeaderTimetableInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTimetable = ref.watch(selectedTimetableStateHolder);

    final savedTimetables = ref.watch(savedTimetablesStateHolder);

    final labelTextStyle = selectedTimetable == null ||
            selectedTimetable.type == TimetableType.teacher
        ? context.textStyles.label
        : context.textStyles.largeTitle;

    return AppTooltip.long(
      message: 'Выбранное расписание',
      verticalOffset: 18,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: Material(
          type: MaterialType.transparency,
          child: PopupMenuButton<TimetableInfo>(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: context.colors.background,
            surfaceTintColor: Colors.transparent,
            initialValue: selectedTimetable,
            padding: const EdgeInsets.only(left: 100),
            itemBuilder: (context) {
              return [
                PopupMenuItem<TimetableInfo>(
                  value: null,
                  onTap: () => context.go('/timetable/search'),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 6),
                      Text('Найти'),
                    ],
                  ),
                ),
                if (selectedTimetable != null &&
                    !savedTimetables.contains(selectedTimetable))
                  PopupMenuItem<TimetableInfo>(
                    value: null,
                    onTap: () => ref
                        .watch(savedTimetablesStateHolder.notifier)
                        .addTimetable(selectedTimetable),
                    child: Row(
                      children: [
                        const Icon(Icons.saved_search_outlined),
                        const SizedBox(width: 6),
                        Text('Сохранить "${selectedTimetable.label}"'),
                      ],
                    ),
                  ),
                if (savedTimetables.isNotEmpty) const PopupMenuDivider(),
                for (final timetable in savedTimetables)
                  PopupMenuItem<TimetableInfo>(
                    value: timetable,
                    onTap: () => ref
                        .watch(timetablePageManager)
                        .selectTimetable(timetable),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(timetable.label),
                            Text(
                              timetable.type.label,
                              style: context.textStyles.smallSubTitle.copyWith(
                                fontSize: 10,
                                color: context.colors.subduedText,
                              ),
                            ),
                          ],
                        ),
                        if (timetable == selectedTimetable)
                          IconButton(
                            icon: const Icon(
                              Icons.close_outlined,
                            ),
                            onPressed: () {
                              ref
                                  .watch(savedTimetablesStateHolder.notifier)
                                  .removeTimetable(timetable);

                              if (selectedTimetable == timetable) {
                                ref
                                    .watch(timetablePageManager)
                                    .selectTimetable(null);
                              }

                              Navigator.of(context).pop();
                            },
                          ),
                      ],
                    ),
                  ),
              ];
            },
            child: InkWell(
              onTap: savedTimetables.isEmpty && selectedTimetable == null
                  ? () {
                      context.go('/timetable/search');
                    }
                  : null,
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
                            selectedTimetable?.label ?? 'Расписание',
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
                              fontFamily:
                                  Icons.arrow_drop_down_rounded.fontFamily,
                              package:
                                  Icons.arrow_drop_down_rounded.fontPackage,
                              fontSize: 20,
                              height: 0.95,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Text(
                      selectedTimetable?.type.label ?? 'Не выбрано',
                      style: context.textStyles.smallSubTitle.copyWith(
                        fontSize: 10,
                        color: context.colors.subduedText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
