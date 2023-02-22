// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnboardingState _$$_OnboardingStateFromJson(Map<String, dynamic> json) =>
    _$_OnboardingState(
      pin: json['pin'] as String?,
      confirmPIN: json['confirmPIN'] as String?,
      otp: json['otp'] as String?,
      invalidCredentials: json['invalidCredentials'] as bool?,
      invalidOTP: json['invalidOTP'] as bool?,
      failedToSendOTP: json['failedToSendOTP'] as bool?,
      canResendOTP: json['canResendOTP'] as bool?,
      nickName: json['nickName'] as String?,
    );

Map<String, dynamic> _$$_OnboardingStateToJson(_$_OnboardingState instance) =>
    <String, dynamic>{
      'pin': instance.pin,
      'confirmPIN': instance.confirmPIN,
      'otp': instance.otp,
      'invalidCredentials': instance.invalidCredentials,
      'invalidOTP': instance.invalidOTP,
      'failedToSendOTP': instance.failedToSendOTP,
      'canResendOTP': instance.canResendOTP,
      'nickName': instance.nickName,
    };
