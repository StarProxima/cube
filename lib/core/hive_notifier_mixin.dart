import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

mixin HiveNotifierMixin<T> on StateNotifier<T> {
  String get boxName;

  late Box _box;

  bool _isFirstTime = true;

  Future<void> _saveData(T data) async {
    await _box.put(boxName, data);
  }

  void _init() async {
    _isFirstTime = false;
    _box = await Hive.openBox(boxName);
    addListener(_saveData);
  }

  @override
  bool updateShouldNotify(T old, T current) {
    if (_isFirstTime) _init();
    return super.updateShouldNotify(old, current);
  }
}
