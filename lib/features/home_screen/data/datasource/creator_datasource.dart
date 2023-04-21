import 'package:garasound_customer_apps/core/api/api_service.dart';
import 'package:garasound_customer_apps/features/home_screen/data/entity/creator_entity.dart';

abstract class CreatorDatasource {
  Future<List<CreatorEntity>> getListCreator();
  Future<CreatorEntity> getCreatorById(String creatorId);
}

class CreatorDatasourceImpl implements CreatorDatasource{
  ApiService apiService;

  CreatorDatasourceImpl(this.apiService);

  @override
  Future<List<CreatorEntity>> getListCreator() async {
    return await apiService.getListCreator();
  }

  @override
  Future<CreatorEntity> getCreatorById(String creatorId) async {
    return await apiService.getCreatorById(creatorId);
  }

}
