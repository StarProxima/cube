import 'package:hive/hive.dart';

import 'package:cube_system/core/state_notifiers/open_state_notifier.dart';

class HiveStateNotifier<T> extends OpenStateNotifier<T> {
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
