import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;

  const AppButton({
    this.text,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: context.colors.text,
      ),
      child: Text(
        text ?? '',
      ),
    );
  }
}
