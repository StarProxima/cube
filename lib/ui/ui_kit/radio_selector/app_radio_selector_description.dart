import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

class AppRadioSelectorDescription extends StatefulWidget {
  final String? description;
  final bool isVisable;

  const AppRadioSelectorDescription({
    super.key,
    this.description,
    required this.isVisable,
  });

  @override
  State<AppRadioSelectorDescription> createState() =>
      _AppRadioSelectorDescriptionState();
}

class _AppRadioSelectorDescriptionState
    extends State<AppRadioSelectorDescription>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      value: widget.isVisable ? 1 : 0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isVisable) {
      animationController.forward();
    } else {
      animationController.reverse();
    }
    return widget.description == null
        ? const SizedBox()
        : SizeTransition(
            sizeFactor: CurvedAnimation(
              parent: animationController,
              curve: Curves.easeInOut,
            ),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animationController,
                  curve: Curves.easeInOut,
                ),
              ),
              child: FadeTransition(
                opacity: CurvedAnimation(
                  parent: animationController,
                  curve: Curves.easeIn,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 8),
                  child: Text(
                    widget.description!,
                    style: context.textStyles.smallSubTitle.copyWith(
                      color: context.colors.subduedText,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
