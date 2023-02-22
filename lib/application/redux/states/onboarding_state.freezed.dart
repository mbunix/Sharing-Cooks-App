// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingState _$OnboardingStateFromJson(Map<String, dynamic> json) {
  return _OnboardingState.fromJson(json);
}

/// @nodoc
mixin _$OnboardingState {
// The PIN
  String? get pin => throw _privateConstructorUsedError; // The confirm PIN
  String? get confirmPIN =>
      throw _privateConstructorUsedError; // The OTP used when confirming the phone number
  String? get otp =>
      throw _privateConstructorUsedError; // Whether the credentials this user entered are invalid
  bool? get invalidCredentials => throw _privateConstructorUsedError;

  ///------------VERIFY PHONE RELATED VALUES------------
// If the OTP entered is invalid
  bool? get invalidOTP =>
      throw _privateConstructorUsedError; // Whether there was a failure while sending an OTP
  bool? get failedToSendOTP =>
      throw _privateConstructorUsedError; //  Whether the user is allowed to resend their PIN
  bool? get canResendOTP => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call(
      {String? pin,
      String? confirmPIN,
      String? otp,
      bool? invalidCredentials,
      bool? invalidOTP,
      bool? failedToSendOTP,
      bool? canResendOTP,
      String? nickName});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? confirmPIN = freezed,
    Object? otp = freezed,
    Object? invalidCredentials = freezed,
    Object? invalidOTP = freezed,
    Object? failedToSendOTP = freezed,
    Object? canResendOTP = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_value.copyWith(
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPIN: freezed == confirmPIN
          ? _value.confirmPIN
          : confirmPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidCredentials: freezed == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool?,
      invalidOTP: freezed == invalidOTP
          ? _value.invalidOTP
          : invalidOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      failedToSendOTP: freezed == failedToSendOTP
          ? _value.failedToSendOTP
          : failedToSendOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      canResendOTP: freezed == canResendOTP
          ? _value.canResendOTP
          : canResendOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pin,
      String? confirmPIN,
      String? otp,
      bool? invalidCredentials,
      bool? invalidOTP,
      bool? failedToSendOTP,
      bool? canResendOTP,
      String? nickName});
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$_OnboardingState>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pin = freezed,
    Object? confirmPIN = freezed,
    Object? otp = freezed,
    Object? invalidCredentials = freezed,
    Object? invalidOTP = freezed,
    Object? failedToSendOTP = freezed,
    Object? canResendOTP = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_$_OnboardingState(
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPIN: freezed == confirmPIN
          ? _value.confirmPIN
          : confirmPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      invalidCredentials: freezed == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool?,
      invalidOTP: freezed == invalidOTP
          ? _value.invalidOTP
          : invalidOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      failedToSendOTP: freezed == failedToSendOTP
          ? _value.failedToSendOTP
          : failedToSendOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      canResendOTP: freezed == canResendOTP
          ? _value.canResendOTP
          : canResendOTP // ignore: cast_nullable_to_non_nullable
              as bool?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnboardingState implements _OnboardingState {
  _$_OnboardingState(
      {this.pin,
      this.confirmPIN,
      this.otp,
      this.invalidCredentials,
      this.invalidOTP,
      this.failedToSendOTP,
      this.canResendOTP,
      this.nickName});

  factory _$_OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardingStateFromJson(json);

// The PIN
  @override
  final String? pin;
// The confirm PIN
  @override
  final String? confirmPIN;
// The OTP used when confirming the phone number
  @override
  final String? otp;
// Whether the credentials this user entered are invalid
  @override
  final bool? invalidCredentials;

  ///------------VERIFY PHONE RELATED VALUES------------
// If the OTP entered is invalid
  @override
  final bool? invalidOTP;
// Whether there was a failure while sending an OTP
  @override
  final bool? failedToSendOTP;
//  Whether the user is allowed to resend their PIN
  @override
  final bool? canResendOTP;
  @override
  final String? nickName;

  @override
  String toString() {
    return 'OnboardingState(pin: $pin, confirmPIN: $confirmPIN, otp: $otp, invalidCredentials: $invalidCredentials, invalidOTP: $invalidOTP, failedToSendOTP: $failedToSendOTP, canResendOTP: $canResendOTP, nickName: $nickName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.confirmPIN, confirmPIN) ||
                other.confirmPIN == confirmPIN) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.invalidCredentials, invalidCredentials) ||
                other.invalidCredentials == invalidCredentials) &&
            (identical(other.invalidOTP, invalidOTP) ||
                other.invalidOTP == invalidOTP) &&
            (identical(other.failedToSendOTP, failedToSendOTP) ||
                other.failedToSendOTP == failedToSendOTP) &&
            (identical(other.canResendOTP, canResendOTP) ||
                other.canResendOTP == canResendOTP) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pin, confirmPIN, otp,
      invalidCredentials, invalidOTP, failedToSendOTP, canResendOTP, nickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardingStateToJson(
      this,
    );
  }
}

abstract class _OnboardingState implements OnboardingState {
  factory _OnboardingState(
      {final String? pin,
      final String? confirmPIN,
      final String? otp,
      final bool? invalidCredentials,
      final bool? invalidOTP,
      final bool? failedToSendOTP,
      final bool? canResendOTP,
      final String? nickName}) = _$_OnboardingState;

  factory _OnboardingState.fromJson(Map<String, dynamic> json) =
      _$_OnboardingState.fromJson;

  @override // The PIN
  String? get pin;
  @override // The confirm PIN
  String? get confirmPIN;
  @override // The OTP used when confirming the phone number
  String? get otp;
  @override // Whether the credentials this user entered are invalid
  bool? get invalidCredentials;
  @override

  ///------------VERIFY PHONE RELATED VALUES------------
// If the OTP entered is invalid
  bool? get invalidOTP;
  @override // Whether there was a failure while sending an OTP
  bool? get failedToSendOTP;
  @override //  Whether the user is allowed to resend their PIN
  bool? get canResendOTP;
  @override
  String? get nickName;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
