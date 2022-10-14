import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String avatar;
  final String name;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserModel(this.id, this.avatar, this.name);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
