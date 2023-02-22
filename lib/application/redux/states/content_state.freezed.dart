// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentState _$ContentStateFromJson(Map<String, dynamic> json) {
  return _ContentState.fromJson(json);
}

/// @nodoc
mixin _$ContentState {
  bool? get feedContentState => throw _privateConstructorUsedError;
  List<Chat>? get chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentStateCopyWith<ContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res, ContentState>;
  @useResult
  $Res call({bool? feedContentState, List<Chat>? chats});
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res, $Val extends ContentState>
    implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedContentState = freezed,
    Object? chats = freezed,
  }) {
    return _then(_value.copyWith(
      feedContentState: freezed == feedContentState
          ? _value.feedContentState
          : feedContentState // ignore: cast_nullable_to_non_nullable
              as bool?,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentStateCopyWith<$Res>
    implements $ContentStateCopyWith<$Res> {
  factory _$$_ContentStateCopyWith(
          _$_ContentState value, $Res Function(_$_ContentState) then) =
      __$$_ContentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? feedContentState, List<Chat>? chats});
}

/// @nodoc
class __$$_ContentStateCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res, _$_ContentState>
    implements _$$_ContentStateCopyWith<$Res> {
  __$$_ContentStateCopyWithImpl(
      _$_ContentState _value, $Res Function(_$_ContentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedContentState = freezed,
    Object? chats = freezed,
  }) {
    return _then(_$_ContentState(
      feedContentState: freezed == feedContentState
          ? _value.feedContentState
          : feedContentState // ignore: cast_nullable_to_non_nullable
              as bool?,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentState implements _ContentState {
  _$_ContentState({this.feedContentState, this.chats});

  factory _$_ContentState.fromJson(Map<String, dynamic> json) =>
      _$$_ContentStateFromJson(json);

  @override
  final bool? feedContentState;
  @override
  final List<Chat>? chats;

  @override
  String toString() {
    return 'ContentState(feedContentState: $feedContentState, chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentState &&
            (identical(other.feedContentState, feedContentState) ||
                other.feedContentState == feedContentState) &&
            const DeepCollectionEquality().equals(other.chats, chats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedContentState,
      const DeepCollectionEquality().hash(chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentStateCopyWith<_$_ContentState> get copyWith =>
      __$$_ContentStateCopyWithImpl<_$_ContentState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentStateToJson(
      this,
    );
  }
}

abstract class _ContentState implements ContentState {
  factory _ContentState(
      {final bool? feedContentState,
      final List<Chat>? chats}) = _$_ContentState;

  factory _ContentState.fromJson(Map<String, dynamic> json) =
      _$_ContentState.fromJson;

  @override
  bool? get feedContentState;
  @override
  List<Chat>? get chats;
  @override
  @JsonKey(ignore: true)
  _$$_ContentStateCopyWith<_$_ContentState> get copyWith =>
      throw _privateConstructorUsedError;
}
