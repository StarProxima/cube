import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/app_back_button.dart';

class TimetableSearchPageHeader extends ConsumerWidget
    implements PreferredSizeWidget {
  const TimetableSearchPageHeader({super.key});

  static const _size = Size.fromHeight(50);

  @override
  Size get preferredSize => _size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const PreferredSize(
      preferredSize: _size,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBackButton(),
                SizedBox(width: 6),
                Flexible(child: TimetableSearchPageTextField()),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
