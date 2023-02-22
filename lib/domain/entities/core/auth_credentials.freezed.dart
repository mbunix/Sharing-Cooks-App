// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCredentials _$AuthCredentialsFromJson(Map<String, dynamic> json) {
  return _AuthCredentials.fromJson(json);
}

/// @nodoc
mixin _$AuthCredentials {
  @JsonKey(name: 'idToken')
  String? get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiresIn')
  String? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'tokenExpiryTimestamp')
  String? get tokenExpiryTimestamp =>
      throw _privateConstructorUsedError; // Other supporting fields that are not returned by the backend
  bool? get isSignedIn => throw _privateConstructorUsedError;
  String? get signedInTime => throw _privateConstructorUsedError;
  String? get pushToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCredentialsCopyWith<AuthCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCredentialsCopyWith<$Res> {
  factory $AuthCredentialsCopyWith(
          AuthCredentials value, $Res Function(AuthCredentials) then) =
      _$AuthCredentialsCopyWithImpl<$Res, AuthCredentials>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idToken') String? idToken,
      @JsonKey(name: 'expiresIn') String? expiresIn,
      @JsonKey(name: 'refreshToken') String? refreshToken,
      @JsonKey(name: 'tokenExpiryTimestamp') String? tokenExpiryTimestamp,
      bool? isSignedIn,
      String? signedInTime,
      String? pushToken});
}

/// @nodoc
class _$AuthCredentialsCopyWithImpl<$Res, $Val extends AuthCredentials>
    implements $AuthCredentialsCopyWith<$Res> {
  _$AuthCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? tokenExpiryTimestamp = freezed,
    Object? isSignedIn = freezed,
    Object? signedInTime = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_value.copyWith(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenExpiryTimestamp: freezed == tokenExpiryTimestamp
          ? _value.tokenExpiryTimestamp
          : tokenExpiryTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      isSignedIn: freezed == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      signedInTime: freezed == signedInTime
          ? _value.signedInTime
          : signedInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthCredentialsCopyWith<$Res>
    implements $AuthCredentialsCopyWith<$Res> {
  factory _$$_AuthCredentialsCopyWith(
          _$_AuthCredentials value, $Res Function(_$_AuthCredentials) then) =
      __$$_AuthCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idToken') String? idToken,
      @JsonKey(name: 'expiresIn') String? expiresIn,
      @JsonKey(name: 'refreshToken') String? refreshToken,
      @JsonKey(name: 'tokenExpiryTimestamp') String? tokenExpiryTimestamp,
      bool? isSignedIn,
      String? signedInTime,
      String? pushToken});
}

/// @nodoc
class __$$_AuthCredentialsCopyWithImpl<$Res>
    extends _$AuthCredentialsCopyWithImpl<$Res, _$_AuthCredentials>
    implements _$$_AuthCredentialsCopyWith<$Res> {
  __$$_AuthCredentialsCopyWithImpl(
      _$_AuthCredentials _value, $Res Function(_$_AuthCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? tokenExpiryTimestamp = freezed,
    Object? isSignedIn = freezed,
    Object? signedInTime = freezed,
    Object? pushToken = freezed,
  }) {
    return _then(_$_AuthCredentials(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenExpiryTimestamp: freezed == tokenExpiryTimestamp
          ? _value.tokenExpiryTimestamp
          : tokenExpiryTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      isSignedIn: freezed == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool?,
      signedInTime: freezed == signedInTime
          ? _value.signedInTime
          : signedInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      pushToken: freezed == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthCredentials implements _AuthCredentials {
  _$_AuthCredentials(
      {@JsonKey(name: 'idToken') this.idToken,
      @JsonKey(name: 'expiresIn') this.expiresIn,
      @JsonKey(name: 'refreshToken') this.refreshToken,
      @JsonKey(name: 'tokenExpiryTimestamp') this.tokenExpiryTimestamp,
      this.isSignedIn,
      this.signedInTime,
      this.pushToken});

  factory _$_AuthCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_AuthCredentialsFromJson(json);

  @override
  @JsonKey(name: 'idToken')
  final String? idToken;
  @override
  @JsonKey(name: 'expiresIn')
  final String? expiresIn;
  @override
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;
  @override
  @JsonKey(name: 'tokenExpiryTimestamp')
  final String? tokenExpiryTimestamp;
// Other supporting fields that are not returned by the backend
  @override
  final bool? isSignedIn;
  @override
  final String? signedInTime;
  @override
  final String? pushToken;

  @override
  String toString() {
    return 'AuthCredentials(idToken: $idToken, expiresIn: $expiresIn, refreshToken: $refreshToken, tokenExpiryTimestamp: $tokenExpiryTimestamp, isSignedIn: $isSignedIn, signedInTime: $signedInTime, pushToken: $pushToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthCredentials &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenExpiryTimestamp, tokenExpiryTimestamp) ||
                other.tokenExpiryTimestamp == tokenExpiryTimestamp) &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.signedInTime, signedInTime) ||
                other.signedInTime == signedInTime) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, expiresIn, refreshToken,
      tokenExpiryTimestamp, isSignedIn, signedInTime, pushToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCredentialsCopyWith<_$_AuthCredentials> get copyWith =>
      __$$_AuthCredentialsCopyWithImpl<_$_AuthCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthCredentialsToJson(
      this,
    );
  }
}

abstract class _AuthCredentials implements AuthCredentials {
  factory _AuthCredentials(
      {@JsonKey(name: 'idToken') final String? idToken,
      @JsonKey(name: 'expiresIn') final String? expiresIn,
      @JsonKey(name: 'refreshToken') final String? refreshToken,
      @JsonKey(name: 'tokenExpiryTimestamp') final String? tokenExpiryTimestamp,
      final bool? isSignedIn,
      final String? signedInTime,
      final String? pushToken}) = _$_AuthCredentials;

  factory _AuthCredentials.fromJson(Map<String, dynamic> json) =
      _$_AuthCredentials.fromJson;

  @override
  @JsonKey(name: 'idToken')
  String? get idToken;
  @override
  @JsonKey(name: 'expiresIn')
  String? get expiresIn;
  @override
  @JsonKey(name: 'refreshToken')
  String? get refreshToken;
  @override
  @JsonKey(name: 'tokenExpiryTimestamp')
  String? get tokenExpiryTimestamp;
  @override // Other supporting fields that are not returned by the backend
  bool? get isSignedIn;
  @override
  String? get signedInTime;
  @override
  String? get pushToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCredentialsCopyWith<_$_AuthCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
