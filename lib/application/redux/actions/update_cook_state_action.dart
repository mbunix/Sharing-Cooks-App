import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';

class UpdateCookStateAction extends ReduxAction<AppState> {
  final bool? onboardingComplete;

  UpdateCookStateAction({
    this.onboardingComplete,
  });

  @override
  AppState reduce() {
    final AppState newState = state.copyWith(
      cookState: state.cookState!.copyWith(
        onboardingComplete:
            onboardingComplete ?? state.cookState?.onboardingComplete,
      ),
    );

    return newState;
  }
}
