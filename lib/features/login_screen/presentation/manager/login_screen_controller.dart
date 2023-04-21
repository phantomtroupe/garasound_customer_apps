import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/model/login_request_model.dart';
import 'package:garasound_customer_apps/features/login_screen/domain/use_case/login_screen_use_case.dart';
import 'package:garasound_customer_apps/features/main_screen/presentation/ui/main_screen.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController{
  PageStatus status = PageStatus.IDLE;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreenUseCase useCase;

  LoginScreenController(this.useCase);

  Future<void> login() async {
    status = PageStatus.LOADING;
    update();

    var data = LoginRequestModel(usernameController.text.toString(), passwordController.text.toString());
    var result = await useCase.login(data);
    status = PageStatus.LOADED;

    if(result.isRight){
      Fluttertoast.showToast(msg: "Berhasil Login");
      Get.offAll(()=>MainScreen());
    }else{
      Fluttertoast.showToast(msg: result.left);
    }

    update();
  }
}