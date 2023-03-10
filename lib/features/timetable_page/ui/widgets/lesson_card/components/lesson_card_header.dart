
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../lesson_card.dart';

class LessonCardHeader extends ConsumerWidget {
  const LessonCardHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "${lessonNumber++}",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              '15:40 - 17:00',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        const Text(
          'До конца 1ч 56м',
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
