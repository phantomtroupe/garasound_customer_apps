import 'package:json_annotation/json_annotation.dart';
part 'login_failed_entity.g.dart';

@JsonSerializable()
class LoginFailedEntity{
  String? message;

  LoginFailedEntity(this.message);

  factory LoginFailedEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginFailedEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LoginFailedEntityToJson(this);
}