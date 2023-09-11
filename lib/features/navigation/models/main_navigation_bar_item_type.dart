enum MainNavigationBarItemType {
  // search(
  //   'Поиск',
  //   'SEARCH',
  //   'SEARCH_Interactivity',
  // ),
  notifications(
    'Уведомления',
    'BELL',
    'BELL_Interactivity',
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
  profile(
    'Профиль',
    'USER',
    'USER_Interactivity',
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

  static MainNavigationBarItemType? tryParse(String? value) {
    for (final type in values) {
      if (type.name == value) return type;
    }
    return null;
  }

  const MainNavigationBarItemType(
    this.label,
    this.iconArtboard,
    this.iconStateMachine,
  );
}
