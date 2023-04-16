import 'package:flutter/material.dart';

class AppRadioSelectorItem<T> {
  final Widget title;
  final Widget? description;
  final T value;

  const AppRadioSelectorItem({
    required this.title,
    this.description,
    required this.value,
  });
}
