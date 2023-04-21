import 'package:json_annotation/json_annotation.dart';
part 'customer_entity.g.dart';

@JsonSerializable()
class CustomerEntity{
  int? id;
  String? full_name;
  String? username;
  String? email;
  String? phone_number;
  String? password;
  String? fpass_code;
  String? fpass_expired;
  String? oauth_token1;
  String? oauth_token2;
  String? oauth_token3;
  String? alternative_link1;
  String? alternative_link2;
  String? alternative_link3;
  String? created_at;
  String? updated_at;
  String? deleted_at;

  CustomerEntity(
      this.id,
      this.full_name,
      this.username,
      this.email,
      this.phone_number,
      this.password,
      this.fpass_code,
      this.fpass_expired,
      this.oauth_token1,
      this.oauth_token2,
      this.oauth_token3,
      this.alternative_link1,
      this.alternative_link2,
      this.alternative_link3,
      this.created_at,
      this.updated_at,
      this.deleted_at);

  factory CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerEntityToJson(this);
}