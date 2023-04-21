import 'package:garasound_customer_apps/features/login_screen/data/entity/login_failed_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/login_failed_model.dart';

class LoginFailedTranslator {
  static LoginFailedModel toModel(LoginFailedEntity entity) {
    return LoginFailedModel(entity.message);
  }

  static LoginFailedEntity toEntity(LoginFailedModel model) {
    return LoginFailedEntity(model.message);
  }
}