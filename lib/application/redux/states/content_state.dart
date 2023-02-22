// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_cooks/domain/entities/chat/chat.dart';

part 'content_state.freezed.dart';
part 'content_state.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ContentState with _$ContentState {
  factory ContentState({
    bool? feedContentState,
    List<Chat>? chats,
  }) = _ContentState;

  factory ContentState.fromJson(Map<String, dynamic> json) =>
      _$ContentStateFromJson(json);

  factory ContentState.initial() => ContentState(
        feedContentState: false,
        chats: <Chat>[],
      );
}
