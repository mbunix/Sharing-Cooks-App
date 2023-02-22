// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MiscState _$$_MiscStateFromJson(Map<String, dynamic> json) => _$_MiscState(
      healthPagePINInputTime: json['healthPagePINInputTime'] as String?,
      pinInputTries: json['pinInputTries'] as int?,
      maxTryTime: json['maxTryTime'] as String?,
      pinVerified: json['pinVerified'] as bool?,
      resumeTimer: json['resumeTimer'] as bool?,
      inactiveTime: json['inactiveTime'] as String?,
      initialRoute: json['initialRoute'] as String?,
      isSignedIn: json['isSignedIn'] as bool?,
      resumeWithPin: json['resumeWithPin'] as bool?,
      selectedProfile:
          $enumDecodeNullable(_$ProfileTypeEnumMap, json['selectedProfile']),
      currentGeoPosition: json['currentGeoPosition'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MiscStateToJson(_$_MiscState instance) =>
    <String, dynamic>{
      'healthPagePINInputTime': instance.healthPagePINInputTime,
      'pinInputTries': instance.pinInputTries,
      'maxTryTime': instance.maxTryTime,
      'pinVerified': instance.pinVerified,
      'resumeTimer': instance.resumeTimer,
      'inactiveTime': instance.inactiveTime,
      'initialRoute': instance.initialRoute,
      'isSignedIn': instance.isSignedIn,
      'resumeWithPin': instance.resumeWithPin,
      'selectedProfile': _$ProfileTypeEnumMap[instance.selectedProfile],
      'currentGeoPosition': instance.currentGeoPosition,
    };

const _$ProfileTypeEnumMap = {
  ProfileType.cook: 'cook',
  ProfileType.client: 'client',
};
