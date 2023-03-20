import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/app_event_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/ui/timetable_search_page.dart';

class NotSelectedEventPage extends ConsumerWidget {
  const NotSelectedEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.pageNotFound1.svg(),
      title: 'Расписание не выбрано',
      buttonText: 'Выбрать',
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) {
              return const TimetableSearchPage();
            },
          ),
        );
      },
    );
  }
}
