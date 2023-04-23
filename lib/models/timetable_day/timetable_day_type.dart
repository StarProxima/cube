import 'package:hive/hive.dart';

part 'timetable_day_type.g.dart';

@HiveType(typeId: 6)
enum TimetableDayEventType {
  @HiveField(0)
  notSelected,
  @HiveField(1)
  welcome,
  @HiveField(2)
  lessons,
  @HiveField(3)
  weekend,
  @HiveField(4)
  holiday,
  @HiveField(5)
  loading,
  @HiveField(6)
  error;
}
