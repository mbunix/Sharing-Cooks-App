import 'package:async_redux/async_redux.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';

/// [BatchUpdateMiscStateAction] is the ONLY action that should be called to update [miscState]
/// with the exception of [IncrementUserVisitCountAction]
/// This action should be called in the following scenarios;
/// - creating an account
/// - logging in a user
/// - resetting PIN
class BatchUpdateMiscStateAction extends ReduxAction<AppState> {
  final String? initialRoute;
  final String? inactiveTime;
  final bool? resumeWithPin;
  final ProfileType? selectedProfile;
  final Map<String, dynamic>? currentGeoPosition;

  BatchUpdateMiscStateAction({
    this.initialRoute,
    this.inactiveTime,
    this.resumeWithPin,
    this.currentGeoPosition,
    this.selectedProfile,
  });

  @override
  AppState reduce() {
    final AppState newState = state.copyWith(
      miscState: state.miscState!.copyWith(
        initialRoute: initialRoute ?? state.miscState?.initialRoute,
        inactiveTime: inactiveTime ?? state.miscState?.inactiveTime,
        resumeWithPin: resumeWithPin ?? state.miscState?.resumeWithPin,
        currentGeoPosition:
            currentGeoPosition ?? state.miscState?.currentGeoPosition,
        selectedProfile:
            selectedProfile ?? state.miscState?.selectedProfile,
      ),
    );

    return newState;
  }
}
