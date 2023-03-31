import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppCustomTransitionPage extends CustomTransitionPage {
  static Widget _defaultTransitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
      child: child,
    );
  }

  const AppCustomTransitionPage({
    super.key,
    required super.child,
    super.transitionDuration = const Duration(milliseconds: 150),
    super.transitionsBuilder = _defaultTransitionsBuilder,
  });
}
