import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppBottomNavigationBarItemType {
  notes(
    'Заметки',
    'CHAT',
    'CHAT_Interactivity',
  ),
  search(
    'Поиск',
    'SEARCH',
    'SEARCH_Interactivity',
  ),
  timetable(
    'Расписание',
    'TIMER',
    'TIMER_Interactivity',
  ),
  tasks(
    'Задачи',
    'BELL',
    'BELL_Interactivity',
  ),
  account(
    'Профиль',
    'USER',
    'USER_Interactivity',
  );

  final String label;

  final String iconArtboard;
  final String iconStateMachine;

  List<String> get iconStateMachines => [iconStateMachine];

  const AppBottomNavigationBarItemType(
    this.label,
    this.iconArtboard,
    this.iconStateMachine,
  );
}

final navigationPageSelectedItemType =
    StateProvider<AppBottomNavigationBarItemType>((ref) {
  return AppBottomNavigationBarItemType.timetable;
});
