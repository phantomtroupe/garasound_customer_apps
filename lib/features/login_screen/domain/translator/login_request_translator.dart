import 'package:garasound_customer_apps/features/login_screen/data/entity/login_request_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/login_request_model.dart';

class LoginRequestTranslator {
  static LoginRequestModel toModel(LoginRequestEntity entity) {
    return LoginRequestModel(entity.username, entity.password);
  }

  static LoginRequestEntity toEntity(LoginRequestModel model) {
    return LoginRequestEntity(model.email, model.password);
  }
}