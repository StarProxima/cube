import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_body.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_footer.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_header.dart';
import 'package:cube_system/features/timetable_page/ui/widgets/lesson_card/components/lesson_card_indicator.dart';

int lessonNumber = 3;

class LessonCard extends ConsumerWidget {
  const LessonCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LessonCardIndicator(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 8,
                  bottom: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LessonCardHeader(),
                    SizedBox(height: 8),
                    LessonCardBody(),
                    SizedBox(height: 8),
                    LessonCardFooter(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
