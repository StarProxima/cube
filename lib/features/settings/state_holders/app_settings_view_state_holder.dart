import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/settings/models/app_theme_enums.dart';

import 'package:cube_system/features/settings/models/view_state/app_settings_view_state.dart';

final appSettingsViewStateHolder = StateNotifierProvider<
    AppSettingsViewStateHolderNotifier, AppSettingsViewState>((ref) {
  return AppSettingsViewStateHolderNotifier(
    AppSettingsViewState(),
  );
});

class AppSettingsViewStateHolderNotifier
    extends StateNotifier<AppSettingsViewState> {
  AppSettingsViewStateHolderNotifier(super.state);

  @override
  get state => super.state;

  void editLessonColorsMode(AppLessonColorsMode lessonColorsMode) {
    state = state.copyWith(lessonColorsMode: lessonColorsMode);
  }
}
