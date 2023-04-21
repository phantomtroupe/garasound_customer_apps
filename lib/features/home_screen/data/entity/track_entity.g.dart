// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackEntity _$TrackEntityFromJson(Map<String, dynamic> json) => TrackEntity(
      json['id'] as String?,
      json['track_name'] as String?,
      json['track_type'] as String?,
      json['track_status'] as String?,
      json['track_duration'] as String?,
      json['track_artwork'] as String?,
      json['creator_fullname'] as String?,
      json['creator_username'] as String?,
      json['id_creator'] as String?,
      json['creator_total_track'] as String?,
    );

Map<String, dynamic> _$TrackEntityToJson(TrackEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'track_name': instance.track_name,
      'track_type': instance.track_type,
      'track_status': instance.track_status,
      'track_duration': instance.track_duration,
      'track_artwork': instance.track_artwork,
      'creator_fullname': instance.creator_fullname,
      'creator_username': instance.creator_username,
      'id_creator': instance.id_creator,
      'creator_total_track': instance.creator_total_track,
    };
