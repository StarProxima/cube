import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 20,
      splashRadius: 18,
      constraints: const BoxConstraints(
        minWidth: 36,
        minHeight: 36,
      ),
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      onPressed: Navigator.of(context).pop,
      icon: Icon(
        Icons.arrow_back_rounded,
        color: context.colors.text,
      ),
    );
  }
}
