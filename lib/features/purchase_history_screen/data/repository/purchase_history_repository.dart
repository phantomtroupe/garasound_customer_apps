import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/core/api/connectivity.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/datasource/purchase_history_datasource.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/entity/purchase_history_entity.dart';

abstract class PurchaseHistoryRepository{
  Future<Either<String,List<PurchaseHistoryEntity>>> getListPurchaseHistory(String idCustomer,String token);
}

class PurchaseHistoryRepositoryImpl implements PurchaseHistoryRepository{
  PurchaseHistoryDatasource datasource;

  PurchaseHistoryRepositoryImpl(this.datasource);

  @override
  Future<Either<String, List<PurchaseHistoryEntity>>> getListPurchaseHistory(String idCustomer,String token) async {
    if(await Connectivity.isConnectedToInternet()){
      try{
        return Right(await datasource.getListPurchaseHistory(idCustomer,token));
      }on DioError catch(e){
        if(e.response?.statusCode == 401){
          return const Left("UNAUTHORIZED");
        }

        return const Left("Tidak Dapat Memuat Data");
      }
      catch(e){
        return const Left("Tidak Dapat Memuat Data");
      }
    }else{
      return const Left("Please Check Your Internet");
    }
  }

}