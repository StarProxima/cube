import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/ui/widgets/app_back_button.dart';

class TimetableSearchPage extends ConsumerWidget {
  const TimetableSearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _TimetableSearchPage();
  }
}

class _TimetableSearchPage extends ConsumerStatefulWidget {
  const _TimetableSearchPage();

  @override
  ConsumerState<_TimetableSearchPage> createState() =>
      _TimetableSearchPageState();
}

class _TimetableSearchPageState extends ConsumerState<_TimetableSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AppBackButton(),
                  SizedBox(width: 6),
                  Flexible(child: TimetableSearchPageTextField()),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return null;
        },
      ),
    );
  }
}
