import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:garasound_customer_apps/core/api/api_service.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/customer_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/login_request_entity.dart';

abstract class LoginScreenDatasource{
  Future<CustomerEntity> login(LoginRequestEntity loginData);
  Future<CustomerEntity> saveCustomerLoginData(CustomerEntity data);
}

class LoginScreenDatasourceImpl implements LoginScreenDatasource{

  ApiService apiService;

  LoginScreenDatasourceImpl(this.apiService);

  @override
  Future<CustomerEntity> login(LoginRequestEntity loginData) async {
    return await apiService.login(loginData);
  }

  @override
  Future<CustomerEntity> saveCustomerLoginData(CustomerEntity data) async {
    var storage = const FlutterSecureStorage();
    await storage.write(key: "id", value: data.id.toString());
    await storage.write(key: "full_name", value: data.full_name.toString());
    await storage.write(key: "username", value: data.username.toString());
    await storage.write(key: "email", value: data.email.toString());
    await storage.write(
        key: "phone_number", value: data.phone_number.toString());
    await storage.write(key: "password", value: data.password.toString());
    await storage.write(
        key: "oauth_token1", value: data.oauth_token1.toString());
    await storage.write(
        key: "oauth_token2", value: data.oauth_token2.toString());
    await storage.write(
        key: "oauth_token3", value: data.oauth_token3.toString());
    await storage.write(
        key: "alternative_link1", value: data.alternative_link1.toString());
    await storage.write(
        key: "alternative_link2", value: data.alternative_link2.toString());
    await storage.write(
        key: "alternative_link3", value: data.alternative_link3.toString());
    await storage.write(key: "created_at", value: data.created_at.toString());
    await storage.write(key: "updated_at", value: data.updated_at.toString());
    await storage.write(key: "deleted_at", value: data.deleted_at.toString());

    return data;
  }

}