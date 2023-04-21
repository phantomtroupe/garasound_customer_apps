import 'package:either_dart/either.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/data/repository/purchase_history_repository.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/model/purchase_history_model.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/translator/purchase_history_translator.dart';

abstract class PurchaseHistoryUseCase {
  Future<Either<String, List<PurchaseHistoryModel>>> getListPurchaseHistory(String idCustomer,String token);
}

class PurchaseHistoryUseCaseImpl implements PurchaseHistoryUseCase {
  PurchaseHistoryRepository repository;

  PurchaseHistoryUseCaseImpl(this.repository);

  @override
  Future<Either<String, List<PurchaseHistoryModel>>> getListPurchaseHistory(String idCustomer,String token) async {
    return repository.getListPurchaseHistory(idCustomer,token).mapRight(
            (right) => right.map((e) => PurchaseHistoryTranslator.toModel(e)).toList());
  }
}
