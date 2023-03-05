import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

int lessonNumber = 3;

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
            borderRadius: BorderRadius.circular(6),
            color: Colors.blueGrey[50],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 12,
                offset: const Offset(0, 1),
              )
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 5,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  // child: const Center(
                  //   child: RotatedBox(
                  //     quarterTurns: 3,
                  //     child: Text(
                  //       'ЛК',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w500,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 8, top: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                            // Container(
                            //   height: 24,
                            //   width: 24,
                            //   decoration: BoxDecoration(
                            //     color: Colors.black.withOpacity(0.05),
                            //     shape: BoxShape.circle,
                            //   ),
                            //   child: Center(
                            //     child: Text(
                            //       "${lessonNumber++}",
                            //       style: const TextStyle(fontSize: 15),
                            //     ),
                            //   ),
                            // ),
                            // const Text(
                            //   'До конца 1ч 56м',
                            //   style: TextStyle(fontSize: 10),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'Паттерны программирования ' * 2,
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            // Container(
                            //   height: 32,
                            //   width: 32,
                            //   decoration: BoxDecoration(
                            //     color: Colors.black.withOpacity(0.05),
                            //     shape: BoxShape.circle,
                            //   ),
                            //   child: Center(
                            //     child: Text(
                            //       "${lessonNumber++}",
                            //       style: const TextStyle(fontSize: 16),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 2),
                                    child: const Text(
                                      'ЛР',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
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
                        ),
                      ],
                    ),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: 0.5,
                  child: Container(
                    color: Colors.black,
                    width: 1,
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
