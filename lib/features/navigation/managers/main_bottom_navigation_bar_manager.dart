import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:cube_system/features/navigation/state_holders/navigation_page_selected_item_type.dart';
import 'package:cube_system/features/navigation/managers/navigation_bar_smi_bools.dart';

import 'package:cube_system/gen/assets/assets.gen.dart';
import 'package:cube_system/features/navigation/state_holders/navigation_page_items.dart';

final mainBottomNavigationBarManager =
    Provider<MainBottomNavigationBarManager>((ref) {
  return MainBottomNavigationBarManager(
    smiBools: ref.watch(navigationBarSmiBools.notifier),
    selectedItemType: ref.watch(navigationPageSelectedItemType.notifier),
  );
});

class MainBottomNavigationBarManager {
  final StateController<Map<AppBottomNavigationBarItemType, SMIBool>> smiBools;
  final StateController<AppBottomNavigationBarItemType> selectedItemType;

  MainBottomNavigationBarManager({
    required this.smiBools,
    required this.selectedItemType,
  });

  void selectItem(AppBottomNavigationBarItemType type) async {
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
    AppBottomNavigationBarItemType type,
  ) {
    // Провайдер не уведомляет слушателей
    smiBools.state[type] = _getRiveInput(
      artboard,
      stateMachineName: type.iconStateMachine,
    );
  }

  List<AppBottomNavigationBarItem> generateAppBottomNavigationBarItems() {
    return [
      for (final type in AppBottomNavigationBarItemType.values)
        AppBottomNavigationBarItem(
          type: type,
          rive: Assets.rive.icons.rive(
            artboard: type.iconArtboard,
            stateMachines: type.iconStateMachines,
            onInit: (art) => handleRiveOnInit(art, type),
          ),
        ),
    ];
  }
}
