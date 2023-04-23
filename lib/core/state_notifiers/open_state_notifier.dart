import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenStateNotifier<T> extends StateNotifier<T> {
  OpenStateNotifier(super.state);

  @override
  T get state => super.state;
}

class SingleStateNotifier<T> extends OpenStateNotifier<T>
    with ChangeStateMixin {
  SingleStateNotifier(super.state);
}

mixin ChangeStateMixin<T> on StateNotifier<T> {
  void change(T newState) {
    state = newState;
  }
}
