// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      json['content'] as String,
      json['from'] as String,
      json['to'] as String,
      const TimestampConvertDatetime().fromJson(json['time'] as Timestamp),
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'from': instance.from,
      'to': instance.to,
      'time': const TimestampConvertDatetime().toJson(instance.time),
    };
