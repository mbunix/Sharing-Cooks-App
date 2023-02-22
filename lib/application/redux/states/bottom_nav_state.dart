// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.freezed.dart';
part 'bottom_nav_state.g.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  factory BottomNavigationState({
    required int? currentBottomNavIndex,
    required int? currentCookBottomNavIndex,
  }) = _BottomNavigationState;

  factory BottomNavigationState.fromJson(Map<String, dynamic> json) =>
      _$BottomNavigationStateFromJson(json);

  factory BottomNavigationState.initial() => BottomNavigationState(
        currentBottomNavIndex: 0,
        currentCookBottomNavIndex: 0,
      );
}
