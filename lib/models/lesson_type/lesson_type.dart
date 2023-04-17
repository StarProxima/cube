import 'package:hive/hive.dart';
part 'lesson_type.g.dart';

@HiveType(typeId: 3)
enum LessonType {
  @HiveField(0)
  lecture,
  @HiveField(1)
  laboratory,
  @HiveField(2)
  practice,
  @HiveField(3)
  seminar,
  @HiveField(4)
  additional,
  @HiveField(5)
  ksrs,
  @HiveField(6)
  recess,
}
