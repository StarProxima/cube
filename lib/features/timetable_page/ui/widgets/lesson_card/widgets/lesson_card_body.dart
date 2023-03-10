import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonCardBody extends ConsumerWidget {
  const LessonCardBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      'Паттерны программирования ' * 2,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }
}
