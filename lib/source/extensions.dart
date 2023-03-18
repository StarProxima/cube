extension IterableExtension<E> on Iterable<E> {
  E? get firstOrNull => isNotEmpty ? first : null;
  E? get lastOrNull => isNotEmpty ? last : null;
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension NumExtension on num {
  double cutNumberEdgesZeroToOne() {
    num val = this;
    if (val >= 1) {
      val = 0.99999;
    } else if (val <= 0) {
      val = 0.00001;
    }
    return val.toDouble();
  }
}
