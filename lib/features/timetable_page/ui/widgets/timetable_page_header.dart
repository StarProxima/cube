import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_back_button.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_date.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/timetable_page_header_timetable_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimetablePageHeader extends ConsumerWidget {
  const TimetablePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SizedBox(
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 4),
              child: TimetablePageHeaderTimetableInfo(),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.only(left: 4, top: 4, right: 4),
              child: TimetablePageHeaderDate(),
            ),
          ),
          Expanded(
            flex: 10,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: TimetablePageHeaderBackButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
