import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/core/api/connectivity.dart';
import 'package:garasound_customer_apps/features/home_screen/data/datasource/track_datasource.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/track_entity.dart';

abstract class TrackRepository{
  Future<Either<String,List<TrackEntity>>> getListTrack();
}

class TrackRepositoryImpl implements TrackRepository{
  TrackDatasource datasource;

  TrackRepositoryImpl(this.datasource);

  @override
  Future<Either<String, List<TrackEntity>>> getListTrack() async {
    if(await Connectivity.isConnectedToInternet()){
      try{
        return Right(await datasource.getListTrack());
      }catch(e){
        return const Left("Tidak Dapat Memuat Data");
      }
    }else{
      return const Left("Please Check Your Internet");
    }
  }

}