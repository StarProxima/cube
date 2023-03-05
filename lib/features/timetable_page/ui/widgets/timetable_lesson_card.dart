import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimetableLessonCard extends ConsumerWidget {
  const TimetableLessonCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                // Container(
                //   height: 20,
                //   width: 20,
                //   decoration: BoxDecoration(
                //     color: Colors.black.withOpacity(0.05),
                //     shape: BoxShape.circle,
                //   ),
                //   child: const Center(
                //     child: Text(
                //       "1",
                //       style: TextStyle(fontSize: 12),
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 8),
                // const Text(
                //   '15:40 - 17:00',
                //   style: TextStyle(fontSize: 12),
                // ),
              ],
            ),
            // const Text(
            //   'До конца 1ч 56м',
            //   style: TextStyle(fontSize: 10),
            // ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey[50],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 4),
              )
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  width: 20,
                  child: const Center(
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'ЛК',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text(
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
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Паттерны программирования ' * 2,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Вишняков Ю. М.',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              '107/5',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
