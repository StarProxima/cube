import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_body.dart';
import 'package:cube_system/features/timetable_search_page/ui/widgets/timetable_search_page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return const Scaffold(
      appBar: TimetableSearchPageHeader(),
      body: TimetableSearchPageBody(),
    );
  }
}
