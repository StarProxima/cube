import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_selected_item_type.dart';
import 'package:cube_system/features/navigation/state_holders/main_navigation_bar_smi_bools.dart';

import 'package:cube_system/features/navigation/models/main_navigation_bar_item_type.dart';

final mainNavigationBarManager = Provider<MainNavigationBarManager>((ref) {
  return MainNavigationBarManager(
    smiBools: ref.watch(mainNavigationBarSmiBools.notifier),
    selectedItemType: ref.watch(mainNavigationBarSelectedItemType.notifier),
  );
});

class MainNavigationBarManager {
  final StateController<Map<MainNavigationBarItemType, SMIBool>> smiBools;
  final StateController<MainNavigationBarItemType> selectedItemType;

  MainNavigationBarManager({
    required this.smiBools,
    required this.selectedItemType,
  });

  Future<void> selectItem(MainNavigationBarItemType type) async {
    await Future(() {});

    selectedItemType.state = type;

    // Delay before icon animation
    await Future.delayed(const Duration(milliseconds: 150));

    smiBools.state[type]!.change(true);

    // Delay before the animation state resets (not always equal to the set time due to the peculiarities of animation)
    await Future.delayed(const Duration(milliseconds: 1000));

    smiBools.state[type]!.change(false);
  }

  SMIBool _getRiveInput(
    Artboard artboard, {
    required String stateMachineName,
  }) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);

    artboard.addController(controller!);

    return controller.findInput<bool>("active") as SMIBool;
  }

  void handleRiveOnInit(
    Artboard artboard,
    MainNavigationBarItemType type,
  ) {
    // Провайдер не уведомляет слушателей, т.к. это не нужно
    smiBools.state[type] = _getRiveInput(
      artboard,
      stateMachineName: type.iconStateMachine,
    );
  }
}
