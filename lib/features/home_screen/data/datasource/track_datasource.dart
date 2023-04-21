import 'package:garasound_customer_apps/core/api/api_service.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/track_entity.dart';

abstract class TrackDatasource {
  Future<List<TrackEntity>> getListTrack();
}

class TrackDatasourceImpl implements TrackDatasource{
  ApiService apiService;

  TrackDatasourceImpl(this.apiService);

  @override
  Future<List<TrackEntity>> getListTrack() async {
    return await apiService.getListTrack();
  }

}