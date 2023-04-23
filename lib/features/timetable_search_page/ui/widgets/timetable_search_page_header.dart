import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/app_back_button.dart';

class TimetableSearchPageHeader extends ConsumerWidget
    implements PreferredSizeWidget {
  const TimetableSearchPageHeader({super.key});

  static const _size = Size.fromHeight(50);

  @override
  Size get preferredSize => _size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PreferredSize(
      preferredSize: _size,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                AppBackButton(),
                SizedBox(width: 12),
                Flexible(
                  child: TimetableSearchPageTextField(),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
