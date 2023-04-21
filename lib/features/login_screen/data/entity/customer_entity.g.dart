// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) =>
    CustomerEntity(
      json['id'] as int?,
      json['full_name'] as String?,
      json['username'] as String?,
      json['email'] as String?,
      json['phone_number'] as String?,
      json['password'] as String?,
      json['fpass_code'] as String?,
      json['fpass_expired'] as String?,
      json['oauth_token1'] as String?,
      json['oauth_token2'] as String?,
      json['oauth_token3'] as String?,
      json['alternative_link1'] as String?,
      json['alternative_link2'] as String?,
      json['alternative_link3'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['deleted_at'] as String?,
    );

Map<String, dynamic> _$CustomerEntityToJson(CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.full_name,
      'username': instance.username,
      'email': instance.email,
      'phone_number': instance.phone_number,
      'password': instance.password,
      'fpass_code': instance.fpass_code,
      'fpass_expired': instance.fpass_expired,
      'oauth_token1': instance.oauth_token1,
      'oauth_token2': instance.oauth_token2,
      'oauth_token3': instance.oauth_token3,
      'alternative_link1': instance.alternative_link1,
      'alternative_link2': instance.alternative_link2,
      'alternative_link3': instance.alternative_link3,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
