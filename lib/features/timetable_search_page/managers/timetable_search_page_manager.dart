import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:cube_system/api/cube_api.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_controller.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_focus.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_event.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_querry_in_progress.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timer.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager(
    api: ref.watch(cubeApi),
    timetablePageManager: ref.watch(timetablePageManager),
    timetables: ref.watch(timetableSearchPageTimetables.notifier),
    searchContoller: ref.watch(timetableSearchPageSearchController.notifier),
    searchFocus: ref.watch(timetableSearchPageSearchFocus.notifier),
    event: ref.watch(timetableSearchPageEventType.notifier),
    querryInProgress: ref.watch(timetableSearchPageQuerryInProgress.notifier),
    timer: ref.watch(timetableSearchPageTimer.notifier),
  );
});

class TimetableSearchPageManager {
  final CubeApi api;

  final TimetablePageManager timetablePageManager;
  final StateController<List<TimetableInfo>> timetables;
  final StateController<TextEditingController> searchContoller;
  final StateController<FocusNode> searchFocus;
  final StateController<TimetableSearchEventType> event;
  final TimetableSearchPageQuerryInProgressNotifier querryInProgress;
  final StateController<Timer> timer;

  TimetableSearchPageManager({
    required this.api,
    required this.timetablePageManager,
    required this.timetables,
    required this.searchContoller,
    required this.searchFocus,
    required this.event,
    required this.querryInProgress,
    required this.timer,
  });

  void handleWelcome() async {
    await Future(() {});
    event.state = TimetableSearchEventType.welcome;
    searchContoller.state.clear();
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
    timer.state.cancel();
    event.state = TimetableSearchEventType.loading;
    timer.state = Timer(const Duration(milliseconds: 700), () {
      _search(querry);
    });
  }

  void _search(String querry) async {
    await Future(() {});

    querryInProgress.add();

    if (querry.strip().isEmpty) {
      querryInProgress.sub();
      event.state = TimetableSearchEventType.welcome;
      return;
    }

    final response = await api.apiLessonsAutocompleteGet(q: querry);
    querryInProgress.sub();

    if (querryInProgress.state >= 1) return;

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

    if (timetablesList.isEmpty) {
      event.state = TimetableSearchEventType.noFound;
    } else {
      event.state = TimetableSearchEventType.results;
    }

    timetables.state = timetablesList;
  }
}