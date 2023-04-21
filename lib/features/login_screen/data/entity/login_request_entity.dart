import 'package:json_annotation/json_annotation.dart';
part 'login_request_entity.g.dart';

@JsonSerializable()
class LoginRequestEntity{
  String? username;
  String? password;

  LoginRequestEntity(this.username, this.password);

  factory LoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestEntityFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestEntityToJson(this);
}