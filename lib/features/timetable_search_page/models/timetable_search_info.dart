import 'package:cube_system/features/timetable_search_page/models/timetable_search_group_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:cube_system/models/timetable/timetable_info.dart';

part 'timetable_search_info.freezed.dart';

@freezed
class TimetableSearchInfo with _$TimetableSearchInfo {
  factory TimetableSearchInfo({
    String? label,
    required TimetableInfo info,
    TimetableSearchGroupInfo? groupInfo,
  }) = _TimetableSearchInfo;
}
