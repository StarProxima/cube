import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

enum AppButtonStyle {
  primary,
  secondary;

  bool get isPrimary => this == AppButtonStyle.primary;
  bool get isSecondary => this == AppButtonStyle.secondary;
}

class AppButton extends StatelessWidget {
  final String? text;
  final Widget? rightIcon;
  final double height;
  final bool isExpanded;
  final AppButtonStyle style;
  final VoidCallback? onTap;
  final VoidCallback? onDisabledTap;

  const AppButton({
    super.key,
    this.text,
    this.rightIcon,
    this.height = 42,
    this.isExpanded = false,
    this.style = AppButtonStyle.primary,
    this.onTap,
    this.onDisabledTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDisabled = onTap == null;
    final ButtonStyle buttonStyle;

    switch (style) {
      case AppButtonStyle.primary:
        buttonStyle = TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          backgroundColor: context.colors.primary,
          foregroundColor: context.colors.white,
          disabledBackgroundColor: context.colors.primary.withOpacity(0.5),
          disabledForegroundColor: context.colors.white,
          textStyle: context.textStyles.label.copyWith(fontSize: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          maximumSize: Size(double.infinity, height),
          minimumSize: Size(isExpanded ? double.infinity : 0, height),
        );
        break;
      case AppButtonStyle.secondary:
        buttonStyle = TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          backgroundColor: context.colors.transperent,
          foregroundColor: context.colors.primary,
          disabledBackgroundColor: context.colors.transperent,
          disabledForegroundColor: context.colors.primary.withOpacity(0.5),
          textStyle: context.textStyles.label.copyWith(fontSize: 15),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isDisabled
                  ? context.colors.primary.withOpacity(0.5)
                  : context.colors.primary,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          maximumSize: Size(double.infinity, height),
          minimumSize: Size(isExpanded ? double.infinity : 0, height),
        );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          if (style.isPrimary && onTap != null)
            BoxShadow(
              color: context.colors.primary.withOpacity(0.3),
              offset: const Offset(0, 1),
              blurRadius: 8,
            )
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: GestureDetector(
        onTap: isDisabled ? onDisabledTap : null,
        child: TextButton(
          onPressed: onTap,
          style: buttonStyle,
          child: Text(text ?? ''),
        ),
      ),
    );
  }
}
