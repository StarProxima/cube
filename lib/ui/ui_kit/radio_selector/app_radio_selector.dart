import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector_item_card.dart';
import 'package:flutter/material.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item.dart';

class AppRadioSelector<T> extends StatefulWidget {
  final T value;
  final String? label;
  final List<AppRadioSelectorItem<T>> items;
  final void Function(T value)? onSelect;

  const AppRadioSelector({
    super.key,
    required this.value,
    this.label,
    required this.items,
    this.onSelect,
  });

  @override
  State<AppRadioSelector<T>> createState() => _AppRadioSelectorState<T>();
}

class _AppRadioSelectorState<T> extends State<AppRadioSelector<T>> {
  @override
  Widget build(BuildContext context) {
    return RadioTheme(
      data: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          context.colors.subduedText,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                widget.label!,
                style: context.textStyles.largeTitle,
              ),
            ),
          ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              for (final item in widget.items)
                AppRadioSelectorItemCard(
                  item: item,
                  selectedValue: widget.value,
                  onSelect: widget.onSelect,
                )
            ],
          ),
        ],
      ),
    );
  }
}
