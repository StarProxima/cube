import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_search_group_info.freezed.dart';

@freezed
class TimetableSearchGroupInfo with _$TimetableSearchGroupInfo {
  factory TimetableSearchGroupInfo({
    required int course,
    required String faculty,
    String? direction,
  }) = _TimetableSearchGroupInfo;
}
