class TrackModel{
  String? id;
  String? track_name;
  String? track_type;
  String? track_status;
  String? track_duration;
  String? track_artwork;
  String? creator_fullname;
  String? creator_username;
  String? id_creator;
  String? creator_total_track;

  TrackModel(
      this.id,
      this.track_name,
      this.track_type,
      this.track_status,
      this.track_duration,
      this.track_artwork,
      this.creator_fullname,
      this.creator_username,
      this.id_creator,
      this.creator_total_track);
}