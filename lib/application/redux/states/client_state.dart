

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';
// Project imports:

part 'client_state.freezed.dart';
part 'client_state.g.dart';

@freezed
class ClientState with _$ClientState {
  factory ClientState({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'active', defaultValue: false) bool? active,
  }) = _ClientState;

  factory ClientState.fromJson(Map<String, dynamic> json) =>
      _$ClientStateFromJson(json);

  factory ClientState.initial() => ClientState(
        id: UNKNOWN,
        active: false,
      );
}
