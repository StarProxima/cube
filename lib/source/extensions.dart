extension IterableExtension<E> on Iterable<E> {
  E? get firstOrNull => isNotEmpty ? first : null;
  E? get lastOrNull => isNotEmpty ? last : null;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
