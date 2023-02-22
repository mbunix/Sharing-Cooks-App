// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_nav_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomNavigationState _$BottomNavigationStateFromJson(
    Map<String, dynamic> json) {
  return _BottomNavigationState.fromJson(json);
}

/// @nodoc
mixin _$BottomNavigationState {
  int? get currentBottomNavIndex => throw _privateConstructorUsedError;
  int? get currentCookBottomNavIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call({int? currentBottomNavIndex, int? currentCookBottomNavIndex});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBottomNavIndex = freezed,
    Object? currentCookBottomNavIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentBottomNavIndex: freezed == currentBottomNavIndex
          ? _value.currentBottomNavIndex
          : currentBottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCookBottomNavIndex: freezed == currentCookBottomNavIndex
          ? _value.currentCookBottomNavIndex
          : currentCookBottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavigationStateCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$_BottomNavigationStateCopyWith(_$_BottomNavigationState value,
          $Res Function(_$_BottomNavigationState) then) =
      __$$_BottomNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentBottomNavIndex, int? currentCookBottomNavIndex});
}

/// @nodoc
class __$$_BottomNavigationStateCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res, _$_BottomNavigationState>
    implements _$$_BottomNavigationStateCopyWith<$Res> {
  __$$_BottomNavigationStateCopyWithImpl(_$_BottomNavigationState _value,
      $Res Function(_$_BottomNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBottomNavIndex = freezed,
    Object? currentCookBottomNavIndex = freezed,
  }) {
    return _then(_$_BottomNavigationState(
      currentBottomNavIndex: freezed == currentBottomNavIndex
          ? _value.currentBottomNavIndex
          : currentBottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCookBottomNavIndex: freezed == currentCookBottomNavIndex
          ? _value.currentCookBottomNavIndex
          : currentCookBottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomNavigationState implements _BottomNavigationState {
  _$_BottomNavigationState(
      {required this.currentBottomNavIndex,
      required this.currentCookBottomNavIndex});

  factory _$_BottomNavigationState.fromJson(Map<String, dynamic> json) =>
      _$$_BottomNavigationStateFromJson(json);

  @override
  final int? currentBottomNavIndex;
  @override
  final int? currentCookBottomNavIndex;

  @override
  String toString() {
    return 'BottomNavigationState(currentBottomNavIndex: $currentBottomNavIndex, currentCookBottomNavIndex: $currentCookBottomNavIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationState &&
            (identical(other.currentBottomNavIndex, currentBottomNavIndex) ||
                other.currentBottomNavIndex == currentBottomNavIndex) &&
            (identical(other.currentCookBottomNavIndex,
                    currentCookBottomNavIndex) ||
                other.currentCookBottomNavIndex == currentCookBottomNavIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentBottomNavIndex, currentCookBottomNavIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      __$$_BottomNavigationStateCopyWithImpl<_$_BottomNavigationState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BottomNavigationStateToJson(
      this,
    );
  }
}

abstract class _BottomNavigationState implements BottomNavigationState {
  factory _BottomNavigationState(
          {required final int? currentBottomNavIndex,
          required final int? currentCookBottomNavIndex}) =
      _$_BottomNavigationState;

  factory _BottomNavigationState.fromJson(Map<String, dynamic> json) =
      _$_BottomNavigationState.fromJson;

  @override
  int? get currentBottomNavIndex;
  @override
  int? get currentCookBottomNavIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
