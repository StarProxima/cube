enum TimetableType {
  group('Группа'),
  teacher('Преподаватель'),
  place('Аудитория');

  final String label;

  const TimetableType(this.label);
}
