import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppCustomTransitionPage extends CustomTransitionPage {
  static Widget _defaultTransitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final fadeTween = Tween<double>(begin: 0.1, end: 1)
        .chain(CurveTween(curve: Curves.easeInOut));

    final scaleTween = Tween<double>(begin: 0.95, end: 1)
        .chain(CurveTween(curve: Curves.easeInOut));

    return ScaleTransition(
      scale: animation.drive(scaleTween),
      child: FadeTransition(
        opacity: animation.drive(fadeTween),
        child: child,
      ),
    );
  }

  const AppCustomTransitionPage({
    super.key,
    required super.child,
    super.transitionDuration = const Duration(milliseconds: 150),
    super.reverseTransitionDuration = const Duration(milliseconds: 150),
    super.transitionsBuilder = _defaultTransitionsBuilder,
  });
}
