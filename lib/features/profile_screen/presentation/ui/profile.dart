import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/controller/profile_screen_controller.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(57, 154, 209, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 16,
            bottom: 80,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.lib.assets.images.blankPerson.image(
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: GetBuilder<ProfileScreenController>(
                      builder: (controller) {
                        return Text(
                          // controller.customerProfile.customerName!,
                          "Paksi",
                          style: AppTextStyles.poppinsSemiBold(
                            fontSize: 16,
                            color: AppColors.white,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  // IconButton(
                  //   onPressed: () {
                  //     Fluttertoast.showToast(
                  //         msg: "This feature is coming soon",
                  //         toastLength: Toast.LENGTH_SHORT);
                  //   },
                  //   icon: const Icon(
                  //     Icons.notifications_outlined,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  // IconButton(
                  //   onPressed: () {
                  //     Fluttertoast.showToast(
                  //         msg: "This feature is coming soon",
                  //         toastLength: Toast.LENGTH_SHORT);
                  //   },
                  //   icon: const Icon(
                  //     Icons.settings,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  SizedBox(
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
