import 'package:garasound_customer_apps/features/login_screen/data/entity/customer_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/customer_model.dart';

class CustomerTranslator {
  static CustomerModel toModel(CustomerEntity entity) {
    return CustomerModel(
        entity.id,
        entity.full_name,
        entity.username,
        entity.email,
        entity.phone_number,
        entity.password,
        entity.fpass_code,
        entity.fpass_expired,
        entity.oauth_token1,
        entity.oauth_token2,
        entity.oauth_token3,
        entity.alternative_link1,
        entity.alternative_link2,
        entity.alternative_link3,
        entity.created_at,
        entity.updated_at,
        entity.deleted_at);
  }

  static CustomerEntity toEntity(CustomerModel model) {
    return CustomerEntity(
        model.id,
        model.full_name,
        model.username,
        model.email,
        model.phone_number,
        model.password,
        model.fpass_code,
        model.fpass_expired,
        model.oauth_token1,
        model.oauth_token2,
        model.oauth_token3,
        model.alternative_link1,
        model.alternative_link2,
        model.alternative_link3,
        model.created_at,
        model.updated_at,
        model.deleted_at);
  }
}