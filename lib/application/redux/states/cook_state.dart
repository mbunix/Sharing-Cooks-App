// Package imports:

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';

part 'cook_state.freezed.dart';
part 'cook_state.g.dart';

@freezed
class CookState with _$CookState {
  factory CookState({
    @JsonKey(name: 'id') String? id,
    bool? onboardingComplete,
  }) = _CookState;

  factory CookState.fromJson(Map<String, dynamic> json) =>
      _$CookStateFromJson(json);

  factory CookState.initial() => CookState(
        id: UNKNOWN,
        onboardingComplete: false,
      );
}
