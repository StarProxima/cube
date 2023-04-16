import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  final Widget? rightIcon;
  final double height;
  final bool isExpanded;

  const AppButton({
    this.text,
    this.onTap,
    this.rightIcon,
    this.height = 42,
    this.isExpanded = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.colors.primary.withOpacity(0.3),
            offset: const Offset(0, 1),
            blurRadius: 8,
          )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          backgroundColor: context.colors.primary,
          foregroundColor: context.colors.white,
          disabledBackgroundColor: context.colors.border,
          disabledForegroundColor: context.colors.white,
          textStyle: context.textStyles.smallLabel.copyWith(fontSize: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          maximumSize: Size(double.infinity, height),
          minimumSize: Size(isExpanded ? double.infinity : 0, height),
        ),
        child: Text(
          text ?? '',
          style: context.textStyles.label.copyWith(
            fontSize: 15,
            color: context.colors.white,
          ),
        ),
      ),
    );
  }
}