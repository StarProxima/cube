enum MainNavigationBarItemType {
  profile(
    'Профиль',
    'USER',
    'USER_Interactivity',
  ),
  notes(
    'Заметки',
    'CHAT',
    'CHAT_Interactivity',
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
  settings(
    'Настройки',
    'SETTINGS',
    'SETTINGS_Interactivity',
  );

  final String label;

  final String iconArtboard;
  final String iconStateMachine;

  List<String> get iconStateMachines => [iconStateMachine];

  const MainNavigationBarItemType(
    this.label,
    this.iconArtboard,
    this.iconStateMachine,
  );
}