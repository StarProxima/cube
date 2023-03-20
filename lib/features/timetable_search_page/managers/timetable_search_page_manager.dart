import 'package:chopper/chopper.dart';
import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_focus.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager(
    api: ref.watch(cubeApi),
    timetablePageManager: ref.watch(timetablePageManager),
    timetables: ref.watch(timetableSearchPageTimetables.notifier),
    searchFocus: ref.watch(timetableSearchPageSearchFocus.notifier),
  );
});

class TimetableSearchPageManager {
  final CubeApi api;

  final TimetablePageManager timetablePageManager;
  final StateController<List<TimetableInfo>> timetables;

  final StateController<FocusNode> searchFocus;

  TimetableSearchPageManager({
    required this.api,
    required this.timetablePageManager,
    required this.timetables,
    required this.searchFocus,
  });

  void requestFocusToSearch() {
    Future.delayed(const Duration(milliseconds: 500), () {
      if (searchFocus.state.canRequestFocus) {
        searchFocus.state.requestFocus();
      }
    });
  }

  void unfocusSearch() {
    searchFocus.state.unfocus();
  }

  void selectTimetable(TimetableInfo timetable) {
    timetablePageManager.selectTimetable(timetable);
  }

  void search(String querry) async {
    await Future(() {});

    if (querry.strip().isEmpty) {
      timetables.state = [];
      return;
    }

    final response = await api.apiLessonsAutocompleteGet(q: querry);

    final res = response.body!;

    final List<TimetableInfo> timetablesList = [];

    for (final group in res.groups) {
      timetablesList.add(
        TimetableInfo(
          id: group.id,
          label: group.name,
          type: TimetableType.group,
        ),
      );
    }

    for (final teacher in res.teachers) {
      timetablesList.add(
        TimetableInfo(
          id: teacher.id,
          label: teacher.name,
          type: TimetableType.teacher,
        ),
      );
    }

    for (final place in res.places) {
      timetablesList.add(
        TimetableInfo(
          id: place.id,
          label: place.name,
          type: TimetableType.place,
        ),
      );
    }

    timetables.state = timetablesList;
  }
}
