import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppBottomNavigationBarItemType {
  notes('Заметки'),
  search('Поиск'),
  timetable('Расписание'),
  tasks('Задачи'),
  account('Профиль');

  final String label;

  const AppBottomNavigationBarItemType(this.label);
}

final navigationPageSelectedItemType =
    StateProvider<AppBottomNavigationBarItemType>((ref) {
  return AppBottomNavigationBarItemType.timetable;
});
