part of '../settings_page.dart';

class _SettingsPageLessonCardLessonTypePosition extends ConsumerWidget {
  const _SettingsPageLessonCardLessonTypePosition();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonCardLessonTypePosition = ref.watch(
      appSettingsViewStateHolder
          .select((value) => value.lessonCardLessonTypePosition),
    );

    final settingsNotifier = ref.read(appSettingsViewStateHolder.notifier);

    return AppRadioSelector<LessonCardLessonTypePosition>(
      label: const Text(
        'Расположение типа занятия в карточке \n(1000 и 1 способ - pre-release overview)',
      ),
      value: lessonCardLessonTypePosition,
      onSelect: (value) =>
          settingsNotifier.editLessonCardLessonTypePosition(value),
      items: const [
        AppRadioSelectorItem(
          title: Text('После нижнего левого блока'),
          description: Text('Расположение по умолчанию'),
          value: LessonCardLessonTypePosition.afterBottomLeftBlock,
        ),
        AppRadioSelectorItem(
          title: Text('После верхнего левого блока'),
          value: LessonCardLessonTypePosition.afterTopLeftBlock,
        ),
        AppRadioSelectorItem(
          title: Text('Снизу слева'),
          value: LessonCardLessonTypePosition.bottomLeft,
        ),
        AppRadioSelectorItem(
          title: Text('Сверху справа'),
          value: LessonCardLessonTypePosition.topRight,
        ),
        AppRadioSelectorItem(
          title: Text('Снизу справа'),
          value: LessonCardLessonTypePosition.bottomRight,
        ),
        AppRadioSelectorItem(
          title: Text('Перед нижним правым блоком'),
          value: LessonCardLessonTypePosition.beforeBottomRightBlock,
        ),
        AppRadioSelectorItem(
          title: Text('На идикаторе'),
          description: Text('Вертикальное расположение слева'),
          value: LessonCardLessonTypePosition.onIndicator,
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
