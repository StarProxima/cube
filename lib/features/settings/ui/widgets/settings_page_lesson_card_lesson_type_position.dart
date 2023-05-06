part of '../settings_page.dart';

class _SettingsPageLessonCardLessonTypePosition extends ConsumerWidget {
  const _SettingsPageLessonCardLessonTypePosition();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonCardLessonTypePosition = ref.watch(
      appSettingsStateHolder
          .select((value) => value.lessonCardLessonTypePosition),
    );

    final settingsNotifier = ref.read(appSettingsStateHolder.notifier);

    return AppRadioSelector<LessonCardLessonTypePosition>(
      label: const Text(
        'Расположение типа занятия в карточке',
      ),
      value: lessonCardLessonTypePosition,
      onSelect: (value) =>
          settingsNotifier.editLessonCardLessonTypePosition(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('На идикаторе'),
          description: Text(
            'Выбор по умолчанию. Вертикальный текст на левом индикаторе.',
          ),
          value: LessonCardLessonTypePosition.onIndicator,
        ),
        AppRadioSelectorItem(
          title: Text('Снизу справа'),
          value: LessonCardLessonTypePosition.bottomRight,
        ),
        AppRadioSelectorItem(
          title: Text('После нижнего левого блока'),
          value: LessonCardLessonTypePosition.afterBottomLeftBlock,
        ),
        AppRadioSelectorItem(
          title: Text('Перед нижним правым блоком'),
          value: LessonCardLessonTypePosition.beforeBottomRightBlock,
        ),
        AppRadioSelectorItem(
          title: Text('Отсутствует'),
          description: Text('Впрочем, действительно, можно и без него'),
          value: LessonCardLessonTypePosition.none,
        ),
      ],
    );
  }
}
