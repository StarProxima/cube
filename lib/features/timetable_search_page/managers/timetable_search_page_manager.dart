import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:cube_system/core/api/cube_api.dart';
import 'package:cube_system/features/analytics/logger.dart';
import 'package:cube_system/features/timetable_page/managers/timetable_page_manager.dart';
import 'package:cube_system/features/timetable_search_page/models/timetable_search_group_info.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_controller.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_search_focus.dart';
import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timetables.dart';
import 'package:cube_system/gen/api/cube_api.swagger.dart';
import 'package:cube_system/models/timetable/timetable_info.dart';
import 'package:cube_system/models/timetable/timetable_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_event.dart';

import 'package:cube_system/features/timetable_search_page/state_holders/timetable_search_page_timer.dart';

import 'package:cube_system/features/timetable_search_page/models/timetable_search_info.dart';

final timetableSearchPageManager = Provider<TimetableSearchPageManager>((ref) {
  return TimetableSearchPageManager(
    api: ref.watch(cubeApi),
    timetablePageManager: ref.watch(timetablePageManager),
    timetables: ref.watch(timetableSearchPageTimetables.notifier),
    searchContoller: ref.watch(timetableSearchPageSearchController.notifier),
    searchFocus: ref.watch(timetableSearchPageSearchFocus.notifier),
    event: ref.watch(timetableSearchPageEventType.notifier),
    timer: ref.watch(timetableSearchPageTimer.notifier),
  );
});

class TimetableSearchPageManager {
  final CubeApi api;

  final TimetablePageManager timetablePageManager;
  final StateController<List<TimetableSearchInfo>> timetables;
  final StateController<TextEditingController> searchContoller;
  final StateController<FocusNode> searchFocus;
  final StateController<TimetableSearchEventType> event;
  final StateController<Timer> timer;

  TimetableSearchPageManager({
    required this.api,
    required this.timetablePageManager,
    required this.timetables,
    required this.searchContoller,
    required this.searchFocus,
    required this.event,
    required this.timer,
  });

  void handleWelcome() async {
    await Future(() {});
    event.state = TimetableSearchEventType.welcome;
    searchContoller.state.clear();
    Future.delayed(const Duration(milliseconds: 250), () {
      if (searchFocus.state.canRequestFocus) {
        // searchFocus.state.requestFocus();
      }
    });
  }

  void unfocusSearch() {
    if (searchFocus.state.hasFocus) {
      searchFocus.state.unfocus();
      if (event.state == TimetableSearchEventType.inputDelay) {
        instantSearch();
      }
    }
  }

  Future<void> selectTimetable(TimetableSearchInfo timetable) async {
    await timetablePageManager.selectTimetable(timetable.info);
  }

  Future<void> instantSearch() =>
      search(searchContoller.state.text, delayBeforeRequest: false);

  Future<void> delayedSearch([String? text]) =>
      search(text ?? searchContoller.state.text, delayBeforeRequest: true);

  Future<void> search(String querry, {required bool delayBeforeRequest}) async {
    await Future(() {});
    timer.state.cancel();
    event.state = TimetableSearchEventType.inputDelay;
    if (delayBeforeRequest) {
      timer.state = Timer(const Duration(milliseconds: 800), () {
        _search(querry);
      });
    } else {
      _search(querry);
    }
  }

  Future<void> _search(String query) async {
    await Future(() {});

    event.state = TimetableSearchEventType.loading;

    if (query.strip().isEmpty) {
      event.state = TimetableSearchEventType.welcome;
      return;
    }

    final TimetableAutocomplete res;

    try {
      final response = await api.apiTimetableEntitiesGet(q: query);
      res = response.body!;
    } catch (e) {
      event.state = TimetableSearchEventType.error;
      return;
    }

    // If the text is different, then another request is coming soon
    if (searchContoller.state.text != query) {
      return;
    }

    final List<TimetableSearchInfo> timetablesList = [];

    for (final group in res.groups) {
      timetablesList.add(
        TimetableSearchInfo(
          info: TimetableInfo(
            id: group.id,
            label: group.name,
            type: TimetableType.group,
          ),
          groupInfo: TimetableSearchGroupInfo(
            course: group.course,
            faculty: group.faculty.shortName,
          ),
        ),
      );
    }

    for (final teacher in res.teachers) {
      timetablesList.add(
        TimetableSearchInfo(
          label: teacher.fullName,
          info: TimetableInfo(
            id: teacher.id,
            label: teacher.shortName,
            type: TimetableType.teacher,
          ),
        ),
      );
    }

    for (final place in res.places) {
      timetablesList.add(
        TimetableSearchInfo(
          info: TimetableInfo(
            id: place.id,
            label: place.name,
            type: TimetableType.place,
          ),
        ),
      );
    }

    if (timetablesList.isEmpty) {
      event.state = TimetableSearchEventType.noFound;
    } else {
      event.state = TimetableSearchEventType.results;
    }

    timetables.state = timetablesList;

    logger.searchTimetable(query);
  }
}
