import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import 'json_convert/timestamp_convert_datetime.dart';
part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  @JsonKey(ignore: true)
  String? id;

  final String content;

  final String from;

  final String to;

  @TimestampConvertDatetime()
  final DateTime time;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  MessageModel(this.content, this.from, this.to, this.time);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
