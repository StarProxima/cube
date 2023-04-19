import 'package:hive/hive.dart';

import 'package:cube_system/core/state_notifiers/open_state_notifier.dart';

class HiveStateNotifier<T> extends OpenStateNotifier<T> {
  final String _boxName;
  String get boxName => _boxName;

  late Box _box;

  HiveStateNotifier(
    super.state, {
    required String boxName,
  }) : _boxName = boxName {
    _init();
  }

  dynamic serialize(T value) => value;
  T deserialize(dynamic value) => value as T;

  void _init() async {
    await _openBox();
    _getData();
    addListener(_saveData);
  }

  Future<void> _openBox() async {
    _box = await Hive.openBox(boxName);
  }

  void _getData() {
    final data = _box.get(boxName);

    if (data != null) {
      state = deserialize(data);
    }
  }

  Future<void> _saveData(T data) async {
    _box.put(boxName, serialize(data));
  }

  @override
  void dispose() {
    _box.close();
    super.dispose();
  }
}

abstract class SingleHiveStateNotifier<T> extends HiveStateNotifier<T>
    with ChangeStateMixin {
  SingleHiveStateNotifier(
    super.state, {
    required super.boxName,
  });
}
