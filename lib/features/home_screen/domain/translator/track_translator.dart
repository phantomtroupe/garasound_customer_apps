import 'package:garasound_customer_apps/features/home_screen/data/entity/track_entity.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/track_model.dart';

class TrackTranslator {
  static TrackModel toModel(TrackEntity entity) {
    return TrackModel(
      entity.id,
      entity.track_name,
      entity.track_type,
      entity.track_status,
      entity.track_duration,
      entity.track_artwork,
      entity.creator_fullname,
      entity.creator_username,
      entity.id_creator,
      entity.creator_total_track
    );
  }
}
