import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 22,
      constraints: const BoxConstraints(
        minWidth: 36,
        minHeight: 36,
      ),
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      onPressed: context.pop,
      icon: Icon(
        Icons.arrow_back_rounded,
        size: 24,
        color: context.colors.text,
      ),
    );
  }
}
