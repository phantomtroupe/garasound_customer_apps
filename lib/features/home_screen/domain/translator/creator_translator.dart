import 'package:garasound_customer_apps/features/home_screen/data/entity/creator_entity.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/creator_model.dart';

class CreatorTranslator {
  static CreatorModel toModel(CreatorEntity entity) {
    return CreatorModel(
      entity.id,
      entity.fullName,
      entity.gender,
      entity.profile_image,
      entity.creator_spc_genre1,
      entity.creator_spc_genre2,
      entity.creator_spc_genre3,
      entity.creator_total_track,
      entity.creator_rating,
      entity.username,
      entity.specialist
    );
  }
}
