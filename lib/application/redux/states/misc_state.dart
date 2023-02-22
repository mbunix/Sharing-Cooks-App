import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

part 'misc_state.freezed.dart';
part 'misc_state.g.dart';

@freezed
class MiscState with _$MiscState {
  factory MiscState({
    String? healthPagePINInputTime,
    int? pinInputTries,
    String? maxTryTime,
    bool? pinVerified,
    bool? resumeTimer,
    String? inactiveTime,
    String? initialRoute,
    bool? isSignedIn,
    bool? resumeWithPin,
    ProfileType? selectedProfile,
    Map<String, dynamic>? currentGeoPosition,
  }) = _MiscState;

  factory MiscState.fromJson(Map<String, dynamic> json) =>
      _$MiscStateFromJson(json);

  factory MiscState.initial() => MiscState(
        healthPagePINInputTime: UNKNOWN,
        pinInputTries: 0,
        maxTryTime: UNKNOWN,
        pinVerified: false,
        resumeTimer: false,
        inactiveTime: UNKNOWN,
        initialRoute: AppRoutes.onboardingPage,
        resumeWithPin: false,
        isSignedIn: false,
        selectedProfile: ProfileType.client,
        currentGeoPosition: <String, dynamic>{},
      );
}
