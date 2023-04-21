// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatorEntity _$CreatorEntityFromJson(Map<String, dynamic> json) =>
    CreatorEntity(
      json['id'] as String?,
      json['fullName'] as String?,
      json['gender'] as String?,
      json['profile_image'] as String?,
      json['creator_spc_genre1'] as String?,
      json['creator_spc_genre2'] as String?,
      json['creator_spc_genre3'] as String?,
      json['creator_total_track'] as String?,
      json['creator_rating'] as String?,
      json['username'] as String?,
      json['specialist'] as String?,
    );

Map<String, dynamic> _$CreatorEntityToJson(CreatorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'profile_image': instance.profile_image,
      'creator_spc_genre1': instance.creator_spc_genre1,
      'creator_spc_genre2': instance.creator_spc_genre2,
      'creator_spc_genre3': instance.creator_spc_genre3,
      'creator_total_track': instance.creator_total_track,
      'creator_rating': instance.creator_rating,
      'username': instance.username,
      'specialist': instance.specialist,
    };
