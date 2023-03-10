import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonCardFooter extends ConsumerWidget {
  const LessonCardFooter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Flexible(
                child: Text(
                  'Вишняков Ю. М.',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: const Text(
                  'ЛР',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const Flexible(
          child: Text(
            '107/5',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
