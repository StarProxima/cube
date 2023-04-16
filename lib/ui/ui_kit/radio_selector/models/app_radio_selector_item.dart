class AppRadioSelectorItem<T> {
  final String title;
  final String? description;
  final T value;

  const AppRadioSelectorItem({
    required this.title,
    this.description,
    required this.value,
  });
}
