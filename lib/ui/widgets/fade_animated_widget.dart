
import 'package:flutter/material.dart';

class FadeAnimatedWidget extends StatefulWidget {
  final Duration duration;
  final double? size;

  final Widget? child;
  const FadeAnimatedWidget({
    super.key,
    this.duration = const Duration(milliseconds: 400),
    this.size,
    required this.child,
  });

  @override
  State<FadeAnimatedWidget> createState() => _FadeAnimatedWidgetState();
}

class _FadeAnimatedWidgetState extends State<FadeAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController animatedController;

  @override
  void initState() {
    super.initState();
    animatedController = AnimationController(
      vsync: this,
      duration: widget.duration,
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
