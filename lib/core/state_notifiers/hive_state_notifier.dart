import 'package:hive/hive.dart';

import 'package:cube_system/core/state_notifiers/open_state_notifier.dart';

class HiveStateNotifier<T> extends OpenStateNotifier<T> {
  final String _boxName;
  String get boxName => _boxName;

  late Box _box;

  final Converter<T, Object?>? _converter;

  HiveStateNotifier(
    super.state, {
    required String boxName,
    Converter<T, Object?>? converter,
  })  : _boxName = boxName,
        _converter = converter {
    _init();
  }

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
      if (_converter != null) {
        final newState = _converter!.from(data);
        state = newState;
      } else {
        state = data;
      }
    }
  }

  Future<void> _saveData(T data) async {
    void put(data) {
      _box.put(boxName, data);
    }

    if (_converter != null) {
      put(_converter!.to(data));
    } else {
      put(data);
    }
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
    super.converter,
  });
}

class Converter<T, K> {
  K Function(T data) to;
  T Function(K data) from;

  Converter({
    required this.to,
    required this.from,
  });
}
