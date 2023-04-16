enum TimetableType {
  group('Группа'),
  teacher('Преподаватель'),
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
