import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/core/api/connectivity.dart';
import 'package:garasound_customer_apps/core/constants/constants.dart';
import 'package:garasound_customer_apps/features/login_screen/data/datasource/login_screen_datasource.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/customer_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/login_failed_entity.dart';
import 'package:garasound_customer_apps/features/login_screen/data/entity/login_request_entity.dart';

abstract class LoginScreenRepository{
  Future<Either<String,CustomerEntity>> login(LoginRequestEntity request);
  Future<Either<String,CustomerEntity>> saveLoginData(CustomerEntity data);
}

class LoginScreenRepositoryImpl implements LoginScreenRepository{

  LoginScreenDatasource datasource;

  LoginScreenRepositoryImpl(this.datasource);

  @override
  Future<Either<String, CustomerEntity>> login(LoginRequestEntity request) async {
    if(await Connectivity.isConnectedToInternet()){
      try{
        var loginResult = await datasource.login(request);
        var saveLoginDataResult = await datasource.saveCustomerLoginData(loginResult);

        return Right(saveLoginDataResult);
      } on DioError catch(e){
        print(e);
        if(e.response!.statusCode == 401){
          return const Left("UNAUTHORIZED");
        }
        else if(e.response!.statusCode == 300){
          var failedResponse = LoginFailedEntity.fromJson(e.response!.data);
          return Left(failedResponse.message.toString());
        }else{
          return const Left("Terdapat Kesalahan");
        }
      }
      catch(e){
        return Left(e.toString());
      }
    }else{
      return const Left(NO_INTERNET_MESSAGE);
    }
  }

  @override
  Future<Either<String, CustomerEntity>> saveLoginData(CustomerEntity data) async {
    try{
      var result = await datasource.saveCustomerLoginData(data);
      return Right(result);
    }catch(e){
      return const Left("Gagal Menyimpan Data");
    }
  }

}