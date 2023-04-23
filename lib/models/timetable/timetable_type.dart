import 'package:hive/hive.dart';
part 'timetable_type.g.dart';

@HiveType(typeId: 5)
enum TimetableType {
  @HiveField(0)
  group('Группа'),
  @HiveField(1)
  teacher('Преподаватель'),
  @HiveField(2)
  place('Аудитория');

  final String label;

  const TimetableType(this.label);

  static TimetableType? tryParse(String? str) {
    for (var element in values) {
      if (element.name == str) return element;
    }
    return null;
  }
}
