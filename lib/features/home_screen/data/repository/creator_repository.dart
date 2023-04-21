import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/core/api/connectivity.dart';
import 'package:garasound_customer_apps/features/home_screen/data/datasource/creator_datasource.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/creator_entity.dart';

abstract class CreatorRepository{
  Future<Either<String,List<CreatorEntity>>> getListCreator();
  Future<Either<String,CreatorEntity>> getCreatorById(String creatorId);
}

class CreatorRepositoryImpl implements CreatorRepository{
  CreatorDatasource datasource;

  CreatorRepositoryImpl(this.datasource);

  @override
  Future<Either<String, List<CreatorEntity>>> getListCreator() async {
    if(await Connectivity.isConnectedToInternet()){
      try{
        return Right(await datasource.getListCreator());
      }catch(e){
        return const Left("Tidak Dapat Memuat Data");
      }
    }else{
      return const Left("Please Check Your Internet");
    }
  }

  @override
  Future<Either<String, CreatorEntity>> getCreatorById(String creatorId) async {
    if(await Connectivity.isConnectedToInternet()){
      try{
        return Right(await datasource.getCreatorById(creatorId));
      }catch(e){
        print(e);
        return const Left("Tidak Dapat Memuat Data");
      }
    }else{
      return const Left("Please Check Your Internet");
    }
  }

}