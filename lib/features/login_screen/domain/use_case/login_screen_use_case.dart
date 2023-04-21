import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/features/login_screen/data/repository/login_screen_repository.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/customer_model.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/login_request_model.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/translator/customer_translator.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/translator/login_request_translator.dart';

abstract class LoginScreenUseCase{
  Future<Either<String,CustomerModel>> login(LoginRequestModel data);
}

class LoginScreenUseCaseImpl implements LoginScreenUseCase{
  LoginScreenRepository repository;

  LoginScreenUseCaseImpl(this.repository);

  @override
  Future<Either<String, CustomerModel>> login(LoginRequestModel data) async {
    return repository.login(LoginRequestTranslator.toEntity(data)).mapRight((right) => CustomerTranslator.toModel(right));
  }

}