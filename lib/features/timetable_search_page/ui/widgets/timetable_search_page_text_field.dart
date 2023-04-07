import 'package:cube_system/features/timetable_search_page/managers/timetable_search_page_manager.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_controller.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_focus.dart';

class TimetableSearchPageTextField extends ConsumerWidget {
  const TimetableSearchPageTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.watch(timetableSearchPageManager);
    final contoller = ref.watch(timetableSearchPageSearchController);
    final focus = ref.watch(timetableSearchPageSearchFocus);

    return TextField(
      controller: contoller,
      focusNode: focus,
      onChanged: manager.search,
      onSubmitted: (value) => manager.search(value, delayBeforeRequest: false),
      onEditingComplete: () =>
          manager.search(contoller.text, delayBeforeRequest: false),
      style: context.textStyles.smallLabel.copyWith(
        fontSize: 16,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        isDense: true,
        hintText: 'Найти расписание',
        hintStyle: context.textStyles.subTitle.copyWith(
          fontSize: 16,
          color: context.colors.hintText,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
