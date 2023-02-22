// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthCredentials? get credentials => throw _privateConstructorUsedError;
  OnboardingState? get onboardingState => throw _privateConstructorUsedError;
  HomeState? get homeState => throw _privateConstructorUsedError;
  BottomNavigationState? get bottomNavigationState =>
      throw _privateConstructorUsedError;
  MiscState? get miscState => throw _privateConstructorUsedError;
  ClientState? get clientState => throw _privateConstructorUsedError;
  CookState? get cookState => throw _privateConstructorUsedError;
  ConnectivityState? get connectivityState =>
      throw _privateConstructorUsedError;
  ContentState? get contentState => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Wait? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AuthCredentials? credentials,
      OnboardingState? onboardingState,
      HomeState? homeState,
      BottomNavigationState? bottomNavigationState,
      MiscState? miscState,
      ClientState? clientState,
      CookState? cookState,
      ConnectivityState? connectivityState,
      ContentState? contentState,
      @JsonKey(ignore: true) Wait? wait});

  $AuthCredentialsCopyWith<$Res>? get credentials;
  $OnboardingStateCopyWith<$Res>? get onboardingState;
  $HomeStateCopyWith<$Res>? get homeState;
  $BottomNavigationStateCopyWith<$Res>? get bottomNavigationState;
  $MiscStateCopyWith<$Res>? get miscState;
  $ClientStateCopyWith<$Res>? get clientState;
  $CookStateCopyWith<$Res>? get cookState;
  $ConnectivityStateCopyWith<$Res>? get connectivityState;
  $ContentStateCopyWith<$Res>? get contentState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = freezed,
    Object? onboardingState = freezed,
    Object? homeState = freezed,
    Object? bottomNavigationState = freezed,
    Object? miscState = freezed,
    Object? clientState = freezed,
    Object? cookState = freezed,
    Object? connectivityState = freezed,
    Object? contentState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as AuthCredentials?,
      onboardingState: freezed == onboardingState
          ? _value.onboardingState
          : onboardingState // ignore: cast_nullable_to_non_nullable
              as OnboardingState?,
      homeState: freezed == homeState
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState?,
      bottomNavigationState: freezed == bottomNavigationState
          ? _value.bottomNavigationState
          : bottomNavigationState // ignore: cast_nullable_to_non_nullable
              as BottomNavigationState?,
      miscState: freezed == miscState
          ? _value.miscState
          : miscState // ignore: cast_nullable_to_non_nullable
              as MiscState?,
      clientState: freezed == clientState
          ? _value.clientState
          : clientState // ignore: cast_nullable_to_non_nullable
              as ClientState?,
      cookState: freezed == cookState
          ? _value.cookState
          : cookState // ignore: cast_nullable_to_non_nullable
              as CookState?,
      connectivityState: freezed == connectivityState
          ? _value.connectivityState
          : connectivityState // ignore: cast_nullable_to_non_nullable
              as ConnectivityState?,
      contentState: freezed == contentState
          ? _value.contentState
          : contentState // ignore: cast_nullable_to_non_nullable
              as ContentState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCredentialsCopyWith<$Res>? get credentials {
    if (_value.credentials == null) {
      return null;
    }

    return $AuthCredentialsCopyWith<$Res>(_value.credentials!, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OnboardingStateCopyWith<$Res>? get onboardingState {
    if (_value.onboardingState == null) {
      return null;
    }

    return $OnboardingStateCopyWith<$Res>(_value.onboardingState!, (value) {
      return _then(_value.copyWith(onboardingState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<$Res>? get homeState {
    if (_value.homeState == null) {
      return null;
    }

    return $HomeStateCopyWith<$Res>(_value.homeState!, (value) {
      return _then(_value.copyWith(homeState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BottomNavigationStateCopyWith<$Res>? get bottomNavigationState {
    if (_value.bottomNavigationState == null) {
      return null;
    }

    return $BottomNavigationStateCopyWith<$Res>(_value.bottomNavigationState!,
        (value) {
      return _then(_value.copyWith(bottomNavigationState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MiscStateCopyWith<$Res>? get miscState {
    if (_value.miscState == null) {
      return null;
    }

    return $MiscStateCopyWith<$Res>(_value.miscState!, (value) {
      return _then(_value.copyWith(miscState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientStateCopyWith<$Res>? get clientState {
    if (_value.clientState == null) {
      return null;
    }

    return $ClientStateCopyWith<$Res>(_value.clientState!, (value) {
      return _then(_value.copyWith(clientState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CookStateCopyWith<$Res>? get cookState {
    if (_value.cookState == null) {
      return null;
    }

    return $CookStateCopyWith<$Res>(_value.cookState!, (value) {
      return _then(_value.copyWith(cookState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectivityStateCopyWith<$Res>? get connectivityState {
    if (_value.connectivityState == null) {
      return null;
    }

    return $ConnectivityStateCopyWith<$Res>(_value.connectivityState!, (value) {
      return _then(_value.copyWith(connectivityState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentStateCopyWith<$Res>? get contentState {
    if (_value.contentState == null) {
      return null;
    }

    return $ContentStateCopyWith<$Res>(_value.contentState!, (value) {
      return _then(_value.copyWith(contentState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthCredentials? credentials,
      OnboardingState? onboardingState,
      HomeState? homeState,
      BottomNavigationState? bottomNavigationState,
      MiscState? miscState,
      ClientState? clientState,
      CookState? cookState,
      ConnectivityState? connectivityState,
      ContentState? contentState,
      @JsonKey(ignore: true) Wait? wait});

  @override
  $AuthCredentialsCopyWith<$Res>? get credentials;
  @override
  $OnboardingStateCopyWith<$Res>? get onboardingState;
  @override
  $HomeStateCopyWith<$Res>? get homeState;
  @override
  $BottomNavigationStateCopyWith<$Res>? get bottomNavigationState;
  @override
  $MiscStateCopyWith<$Res>? get miscState;
  @override
  $ClientStateCopyWith<$Res>? get clientState;
  @override
  $CookStateCopyWith<$Res>? get cookState;
  @override
  $ConnectivityStateCopyWith<$Res>? get connectivityState;
  @override
  $ContentStateCopyWith<$Res>? get contentState;
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = freezed,
    Object? onboardingState = freezed,
    Object? homeState = freezed,
    Object? bottomNavigationState = freezed,
    Object? miscState = freezed,
    Object? clientState = freezed,
    Object? cookState = freezed,
    Object? connectivityState = freezed,
    Object? contentState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_$_AppState(
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as AuthCredentials?,
      onboardingState: freezed == onboardingState
          ? _value.onboardingState
          : onboardingState // ignore: cast_nullable_to_non_nullable
              as OnboardingState?,
      homeState: freezed == homeState
          ? _value.homeState
          : homeState // ignore: cast_nullable_to_non_nullable
              as HomeState?,
      bottomNavigationState: freezed == bottomNavigationState
          ? _value.bottomNavigationState
          : bottomNavigationState // ignore: cast_nullable_to_non_nullable
              as BottomNavigationState?,
      miscState: freezed == miscState
          ? _value.miscState
          : miscState // ignore: cast_nullable_to_non_nullable
              as MiscState?,
      clientState: freezed == clientState
          ? _value.clientState
          : clientState // ignore: cast_nullable_to_non_nullable
              as ClientState?,
      cookState: freezed == cookState
          ? _value.cookState
          : cookState // ignore: cast_nullable_to_non_nullable
              as CookState?,
      connectivityState: freezed == connectivityState
          ? _value.connectivityState
          : connectivityState // ignore: cast_nullable_to_non_nullable
              as ConnectivityState?,
      contentState: freezed == contentState
          ? _value.contentState
          : contentState // ignore: cast_nullable_to_non_nullable
              as ContentState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {this.credentials,
      this.onboardingState,
      this.homeState,
      this.bottomNavigationState,
      this.miscState,
      this.clientState,
      this.cookState,
      this.connectivityState,
      this.contentState,
      @JsonKey(ignore: true) this.wait});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  final AuthCredentials? credentials;
  @override
  final OnboardingState? onboardingState;
  @override
  final HomeState? homeState;
  @override
  final BottomNavigationState? bottomNavigationState;
  @override
  final MiscState? miscState;
  @override
  final ClientState? clientState;
  @override
  final CookState? cookState;
  @override
  final ConnectivityState? connectivityState;
  @override
  final ContentState? contentState;
  @override
  @JsonKey(ignore: true)
  final Wait? wait;

  @override
  String toString() {
    return 'AppState(credentials: $credentials, onboardingState: $onboardingState, homeState: $homeState, bottomNavigationState: $bottomNavigationState, miscState: $miscState, clientState: $clientState, cookState: $cookState, connectivityState: $connectivityState, contentState: $contentState, wait: $wait)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.onboardingState, onboardingState) ||
                other.onboardingState == onboardingState) &&
            (identical(other.homeState, homeState) ||
                other.homeState == homeState) &&
            (identical(other.bottomNavigationState, bottomNavigationState) ||
                other.bottomNavigationState == bottomNavigationState) &&
            (identical(other.miscState, miscState) ||
                other.miscState == miscState) &&
            (identical(other.clientState, clientState) ||
                other.clientState == clientState) &&
            (identical(other.cookState, cookState) ||
                other.cookState == cookState) &&
            (identical(other.connectivityState, connectivityState) ||
                other.connectivityState == connectivityState) &&
            (identical(other.contentState, contentState) ||
                other.contentState == contentState) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      credentials,
      onboardingState,
      homeState,
      bottomNavigationState,
      miscState,
      clientState,
      cookState,
      connectivityState,
      contentState,
      wait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final AuthCredentials? credentials,
      final OnboardingState? onboardingState,
      final HomeState? homeState,
      final BottomNavigationState? bottomNavigationState,
      final MiscState? miscState,
      final ClientState? clientState,
      final CookState? cookState,
      final ConnectivityState? connectivityState,
      final ContentState? contentState,
      @JsonKey(ignore: true) final Wait? wait}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  AuthCredentials? get credentials;
  @override
  OnboardingState? get onboardingState;
  @override
  HomeState? get homeState;
  @override
  BottomNavigationState? get bottomNavigationState;
  @override
  MiscState? get miscState;
  @override
  ClientState? get clientState;
  @override
  CookState? get cookState;
  @override
  ConnectivityState? get connectivityState;
  @override
  ContentState? get contentState;
  @override
  @JsonKey(ignore: true)
  Wait? get wait;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
