import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/constants.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_button_styles.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/core/cosmetics/textfields.dart';
import 'package:garasound_customer_apps/core/open_url.dart';
import 'package:garasound_customer_apps/features/login_screen/presentation/manager/login_screen_controller.dart';
import 'package:garasound_customer_apps/injector.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    LoginScreenController(
      sl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_sharp),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In",
                        style: AppTextStyles.poppinsRegular(
                            fontSize: 30, color: AppColors.primary),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 16, right: 16),
                          child: StandardTextField(
                            controller: controller.usernameController,
                            hint: "Email or Username",
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16),
                          child: PasswordTextField(
                            controller: controller.passwordController,
                            hint: "Password",
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: AppTextStyles.poppinsRegular(
                                fontSize: 12.0,
                                color: AppColors.labelSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 8),
                            child: SizedBox(
                              height: 45,
                              width: double.infinity,
                              child: TextButton(
                                style: AppButtonStyles.buttonPrimary(),
                                onPressed: () {
                                  controller.login();
                                },
                                child: GetBuilder<LoginScreenController>(
                                  builder: (controller) {
                                    if (controller.status ==
                                        PageStatus.LOADING) {
                                      return const CircularProgressIndicator(backgroundColor: Colors.white,);
                                    } else {
                                      return Text(
                                        "Sign In",
                                        style: AppTextStyles.poppinsRegular(
                                            color: Colors.white),
                                      );
                                    }
                                  },
                                ),
                              ),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 16.0,
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            openUrl(TERMS_AND_CONDITION_URL);
                          },
                          child: Text(
                            "Lihat Syarat dan Ketentuan",
                            style: AppTextStyles.poppinsRegular(
                              fontSize: 14,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            openUrl(PRIVACY_POLICY_URL);
                          },
                          child: Text(
                            "Lihat Kebijakan Privasi",
                            style: AppTextStyles.poppinsRegular(
                              fontSize: 14,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
