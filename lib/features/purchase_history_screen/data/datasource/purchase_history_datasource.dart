import 'package:garasound_customer_apps/core/api/api_service.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/entity/purchase_history_entity.dart';

abstract class PurchaseHistoryDatasource {
  Future<List<PurchaseHistoryEntity>> getListPurchaseHistory(String idCustomer,String token);
}

class PurchaseHistoryDatasourceImpl implements PurchaseHistoryDatasource{
  ApiService apiService;

  PurchaseHistoryDatasourceImpl(this.apiService);

  @override
  Future<List<PurchaseHistoryEntity>> getListPurchaseHistory(String idCustomer,String token) async {
    return await apiService.getPurchaseHistory(idCustomer,token);
  }

}
