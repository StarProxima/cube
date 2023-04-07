import 'package:flutter/material.dart';

class ShortFadeAnimatedWidget extends StatefulWidget {
  final Widget? child;
  final double? size;
  const ShortFadeAnimatedWidget({super.key, required this.child, this.size});

  @override
  State<ShortFadeAnimatedWidget> createState() =>
      _ShortFadeAnimatedWidgetState();
}

class _ShortFadeAnimatedWidgetState extends State<ShortFadeAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animatedController;

  @override
  void initState() {
    super.initState();
    animatedController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animatedController.forward();

    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: FadeTransition(
        opacity: animatedController,
        child: widget.child,
      ),
    );
  }
}
