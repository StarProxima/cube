import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

abstract class HiveStateNotifier<T> extends StateNotifier<T> {
  String get boxName;

  late Box _box;

  HiveStateNotifier(super.state) {
    _init();
  }

  void _init() async {
    _box = await Hive.openBox(boxName);
    state = _box.get(boxName) ?? state;
    addListener(_saveData);
  }

  Future<void> _saveData(T data) async {
    await _box.put(boxName, data);
  }

  @override
  void dispose() {
    _box.close();
    super.dispose();
  }
}

mixin ChangeStateMixin<T> on StateNotifier<T> {
  void change(T newState) {
    state = newState;
  }
}
