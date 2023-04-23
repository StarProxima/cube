import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import 'package:cube_system/core/state_notifiers/open_state_notifier.dart';

class HiveStateNotifier<T> extends OpenStateNotifier<T> {
  final String _boxName;
  String get boxName => _boxName;

  final bool _autoSaving;
  bool get autoSaving => true;

  late Box _box;

  late T _lastState = state;

  HiveStateNotifier(
    super.state, {
    required String boxName,
    bool autoSaving = true,
  })  : _boxName = boxName,
        _autoSaving = autoSaving {
    _init();
  }

  void _init() async {
    if (Hive.isBoxOpen(boxName)) {
      _box = Hive.box(boxName);
      getData();
    } else {
      await _openBox();
    }

    if (_autoSaving) {
      addListener(saveData);
    }
  }

  void save() => _box.put(boxName, serialize(state));

  @protected
  void saveData(T data) {
    final shouldSave = updateShouldSave(_lastState, data);
    _lastState = data;

    if (shouldSave) {
      _box.put(boxName, serialize(data));
    }
  }

  @protected
  void getData() {
    final data = _box.get(boxName);

    if (data != null) {
      state = deserialize(data);
    }
  }

  Future<void> _openBox() async {
    _box = await Hive.openBox(boxName);
  }

  @protected
  bool updateShouldSave(T old, T current) => true;

  @protected
  dynamic serialize(T value) => value;

  @protected
  T deserialize(dynamic value) => value as T;

  @override
  void dispose() {
    _box.close();
    super.dispose();
  }
}

class SingleHiveStateNotifier<T> extends HiveStateNotifier<T>
    with ChangeStateMixin {
  SingleHiveStateNotifier(
    super.state, {
    required super.boxName,
    super.autoSaving,
  });
}
