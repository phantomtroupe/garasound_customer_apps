import 'package:either_dart/either.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garasound_customer_apps/core/api/connectivity.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/features/login_screen/presentation/ui/login_screen.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/model/purchase_history_model.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/use_case/purchase_history_use_case.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PurchaseHistoryScreenController extends GetxController{
  PageStatus status = PageStatus.IDLE;
  List<PurchaseHistoryModel> purchasedHistoryData = [];
  String errorMessage = "";
  PurchaseHistoryUseCase useCase;

  PurchaseHistoryScreenController(this.useCase);

  Future<void> getListPurchaseHistory() async{
    status = PageStatus.LOADING;
    update();

    String? idCustomer;
    String? oauthToken;
    const storage = FlutterSecureStorage();
    idCustomer = await storage.read(key: "id");
    oauthToken = await storage.read(key: "oauth_token1");
    oauthToken = "Bearer $oauthToken}";

    var result = await useCase.getListPurchaseHistory(idCustomer.toString(),oauthToken.toString());

    if(result.isRight){
      purchasedHistoryData = result.right;
      status = PageStatus.LOADED;
    }else{
      errorMessage = result.left;
      status = PageStatus.ERROR;
      if(result.left == "UNAUTHORIZED"){
        Fluttertoast.showToast(msg: "Anda Harus Login Untuk Melanjutkan");
        Get.offAll(()=>LoginScreen());
      }
    }

    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getListPurchaseHistory();
  }
}