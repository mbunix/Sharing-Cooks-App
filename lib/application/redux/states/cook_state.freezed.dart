// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cook_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CookState _$CookStateFromJson(Map<String, dynamic> json) {
  return _CookState.fromJson(json);
}

/// @nodoc
mixin _$CookState {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  bool? get onboardingComplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CookStateCopyWith<CookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CookStateCopyWith<$Res> {
  factory $CookStateCopyWith(CookState value, $Res Function(CookState) then) =
      _$CookStateCopyWithImpl<$Res, CookState>;
  @useResult
  $Res call({@JsonKey(name: 'id') String? id, bool? onboardingComplete});
}

/// @nodoc
class _$CookStateCopyWithImpl<$Res, $Val extends CookState>
    implements $CookStateCopyWith<$Res> {
  _$CookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? onboardingComplete = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingComplete: freezed == onboardingComplete
          ? _value.onboardingComplete
          : onboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CookStateCopyWith<$Res> implements $CookStateCopyWith<$Res> {
  factory _$$_CookStateCopyWith(
          _$_CookState value, $Res Function(_$_CookState) then) =
      __$$_CookStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') String? id, bool? onboardingComplete});
}

/// @nodoc
class __$$_CookStateCopyWithImpl<$Res>
    extends _$CookStateCopyWithImpl<$Res, _$_CookState>
    implements _$$_CookStateCopyWith<$Res> {
  __$$_CookStateCopyWithImpl(
      _$_CookState _value, $Res Function(_$_CookState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? onboardingComplete = freezed,
  }) {
    return _then(_$_CookState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      onboardingComplete: freezed == onboardingComplete
          ? _value.onboardingComplete
          : onboardingComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CookState implements _CookState {
  _$_CookState({@JsonKey(name: 'id') this.id, this.onboardingComplete});

  factory _$_CookState.fromJson(Map<String, dynamic> json) =>
      _$$_CookStateFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  final bool? onboardingComplete;

  @override
  String toString() {
    return 'CookState(id: $id, onboardingComplete: $onboardingComplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CookState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.onboardingComplete, onboardingComplete) ||
                other.onboardingComplete == onboardingComplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, onboardingComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CookStateCopyWith<_$_CookState> get copyWith =>
      __$$_CookStateCopyWithImpl<_$_CookState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CookStateToJson(
      this,
    );
  }
}

abstract class _CookState implements CookState {
  factory _CookState(
      {@JsonKey(name: 'id') final String? id,
      final bool? onboardingComplete}) = _$_CookState;

  factory _CookState.fromJson(Map<String, dynamic> json) =
      _$_CookState.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  bool? get onboardingComplete;
  @override
  @JsonKey(ignore: true)
  _$$_CookStateCopyWith<_$_CookState> get copyWith =>
      throw _privateConstructorUsedError;
}
