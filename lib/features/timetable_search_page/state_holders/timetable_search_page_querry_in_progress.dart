import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableSearchPageQuerryInProgress =
    StateNotifierProvider<TimetableSearchPageQuerryInProgressNotifier, int>(
        (ref) {
  return TimetableSearchPageQuerryInProgressNotifier(
    0,
  );
});

class TimetableSearchPageQuerryInProgressNotifier extends StateNotifier<int> {
  TimetableSearchPageQuerryInProgressNotifier(super.state);

  @override
  get state => super.state;

  void add() => state = state + 1;

  void sub() => state = state - 1;
}
