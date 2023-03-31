import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/ui/widgets/event_pages/app_event_page.dart';

import 'package:cube_system/features/timetable_search_page/ui/timetable_search_page.dart';

class WelcomeEventPage extends ConsumerWidget {
  const WelcomeEventPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppEventPage(
      picture: Assets.brooklyn.welcome3.svg(),
      title: 'Вы почти у цели',
      subTitle: 'Осталось только выбрать расписание',
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
