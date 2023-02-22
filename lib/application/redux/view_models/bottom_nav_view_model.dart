import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';

class BottomNavViewModel extends Vm {
  final int currentIndex;
  final int currentCookBottomNavIndex;
  final ProfileType selectedProfile;

  BottomNavViewModel({
    required this.currentIndex,
    required this.currentCookBottomNavIndex,
    required this.selectedProfile,
  }) : super(
          equals: <Object?>[
            currentIndex,
            currentCookBottomNavIndex,
            selectedProfile,
          ],
        );

  static BottomNavViewModel fromStore(Store<AppState> store) {
    return BottomNavViewModel(
      currentIndex:
          store.state.bottomNavigationState?.currentBottomNavIndex ?? 0,
      currentCookBottomNavIndex:
          store.state.bottomNavigationState?.currentCookBottomNavIndex ?? 0,
      selectedProfile:
          store.state.miscState?.selectedProfile ?? ProfileType.client,
    );
  }
}
