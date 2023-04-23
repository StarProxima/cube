import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/models/app_radio_selector_item.dart';

import 'package:cube_system/ui/ui_kit/radio_selector/app_radio_selector_description.dart';

class AppRadioSelectorItemCard<T> extends ConsumerWidget {
  final AppRadioSelectorItem item;
  final T selectedValue;
  final void Function(T value)? onSelect;

  const AppRadioSelectorItemCard({
    super.key,
    required this.item,
    required this.selectedValue,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioListTile<T>(
          title: DefaultTextStyle(
            style: context.textStyles.label,
            child: item.title,
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
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          contentPadding: const EdgeInsets.all(4),
          onChanged: (value) {
            if (value != null) {
              onSelect?.call(item.value);
            }
          },
        ),
        AppRadioSelectorDescription(
          description: item.description,
          isVisable: selectedValue == item.value,
        ),
      ],
    );
  }
}
