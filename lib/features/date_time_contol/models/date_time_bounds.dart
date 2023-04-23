import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_time_bounds.freezed.dart';

@freezed
class DateTimeBounds with _$DateTimeBounds {
  factory DateTimeBounds({
    required DateTime start,
    required DateTime end,
  }) = _DateTimeBounds;
}
