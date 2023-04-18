import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

mixin HiveNotifierMixin<T> on StateNotifier<T> {
  String get boxName;

  Box? _box;

  bool _isFirstTime = true;

  Future<void> _saveData(T data) async {
    _box ??= await Hive.openBox(boxName);

    await _box!.put(boxName, data);
  }

  void _addListener() {
    _isFirstTime = false;
    addListener(_saveData);
  }

  @override
  bool updateShouldNotify(T old, T current) {
    if (_isFirstTime) _addListener();
    return super.updateShouldNotify(old, current);
  }
}
