// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentState _$$_ContentStateFromJson(Map<String, dynamic> json) =>
    _$_ContentState(
      feedContentState: json['feedContentState'] as bool?,
      chats: (json['chats'] as List<dynamic>?)
          ?.map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContentStateToJson(_$_ContentState instance) =>
    <String, dynamic>{
      'feedContentState': instance.feedContentState,
      'chats': instance.chats,
    };
