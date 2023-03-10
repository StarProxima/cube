import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonCardIndicator extends ConsumerWidget {
  const LessonCardIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 5,
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.5),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          heightFactor: 0.75,
          child: Container(
            width: 5,
            decoration: const BoxDecoration(
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
