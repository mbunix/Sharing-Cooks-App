// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';

// Project imports:

class BottomNavAction extends ReduxAction<AppState> {
  BottomNavAction({this.currentBottomNavIndex, this.currentCookBottomNavIndex});

  final int? currentBottomNavIndex;
  final int? currentCookBottomNavIndex;

  @override
  AppState reduce() {
    final AppState newState = state.copyWith.bottomNavigationState!.call(
      currentBottomNavIndex: currentBottomNavIndex ??
          state.bottomNavigationState?.currentBottomNavIndex ??
          0,
      currentCookBottomNavIndex: currentCookBottomNavIndex ??
          state.bottomNavigationState?.currentCookBottomNavIndex ??
          0,
    );

    return newState;
  }
}
