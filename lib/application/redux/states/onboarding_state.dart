// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';

part 'onboarding_state.freezed.dart';
part 'onboarding_state.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class OnboardingState with _$OnboardingState {
  factory OnboardingState({

    // The PIN
    String? pin,

    // The confirm PIN
    String? confirmPIN,

    // The OTP used when confirming the phone number
    String? otp,

    // Whether the credentials this user entered are invalid
    bool? invalidCredentials,

    ///------------VERIFY PHONE RELATED VALUES------------
    // If the OTP entered is invalid
    bool? invalidOTP,

    // Whether there was a failure while sending an OTP
    bool? failedToSendOTP,

    //  Whether the user is allowed to resend their PIN
    bool? canResendOTP,
    String? nickName,

    ///------------ONBOARDING STATE BOOLEANS------------
  }) = _OnboardingState;

  factory OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStateFromJson(json);

  factory OnboardingState.initial() => OnboardingState(
       
        invalidOTP: false,
        otp: UNKNOWN,
        failedToSendOTP: false,
        canResendOTP: false,
        pin: UNKNOWN,
        confirmPIN: UNKNOWN,
        invalidCredentials: false,
        nickName: UNKNOWN,
      );
}
