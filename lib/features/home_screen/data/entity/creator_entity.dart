import 'package:json_annotation/json_annotation.dart';
part 'creator_entity.g.dart';

@JsonSerializable()
class CreatorEntity{
  String? id;
  String? fullName;
  String? gender;
  String? profile_image;
  String? creator_spc_genre1;
  String? creator_spc_genre2;
  String? creator_spc_genre3;
  String? creator_total_track;
  String? creator_rating;
  String? username;
  String? specialist;


  CreatorEntity(
      this.id,
      this.fullName,
      this.gender,
      this.profile_image,
      this.creator_spc_genre1,
      this.creator_spc_genre2,
      this.creator_spc_genre3,
      this.creator_total_track,
      this.creator_rating,
      this.username,
      this.specialist);

  factory CreatorEntity.fromJson(Map<String, dynamic> json) =>
      _$CreatorEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CreatorEntityToJson(this);
}