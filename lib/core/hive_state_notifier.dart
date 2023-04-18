import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class HiveStateNotifier<T> extends StateNotifier<T> {
  @override
  T get state => super.state;

  String boxName;
  late Box _box;

  HiveStateNotifier(super.state, {required this.boxName}) {
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

class SingleHiveStateNotifier<T> extends HiveStateNotifier<T?>
    with ChangeStateMixin {
  SingleHiveStateNotifier(super.state, {required super.boxName});
}

mixin ChangeStateMixin<T> on StateNotifier<T> {
  void change(T newState) {
    state = newState;
  }
}
