import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector_description.dart';
import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item_model.dart';

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
    final T selectedValue = widget.value;
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
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                widget.label!,
                style: context.textStyles.largeTitle,
              ),
            ),
          ...widget.items.map(
            (item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RadioListTile<T>(
                    title: Text(
                      item.title,
                      style: context.textStyles.label,
                    ),
                    value: item.value,
                    groupValue: selectedValue,
                    activeColor: context.colors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    dense: true,
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    contentPadding: const EdgeInsets.all(4),
                    onChanged: (value) {
                      if (value != null) {
                        widget.onSelect?.call(item.value);
                      }
                    },
                  ),
                  AppRadioSelectorDescription(
                    description: item.description,
                    isVisable: selectedValue == item.value,
                  ),
                ],
              );
            },
          ).toList()
        ],
      ),
    );
  }
}
