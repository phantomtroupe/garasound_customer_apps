import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/ui/decoration.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // bottom: 150,
      left: 12,
      right: 12,
      top: MediaQuery.of(context).size.height * 10 / 100,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: profileMenuDecoration,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Aktivasi",
                style: AppTextStyles.poppinsRegular(
                  fontSize: 15,
                  color: AppColors.labelPrimary,
                ),
              ),
            ),
            const Divider(
              color: AppColors.labelSecondary,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: InkWell(
                onTap: (){
                  // Get.to(()=>const EditProfileScreen(),);
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => const EditProfileScreen(),
                  // ),);
                },
                child: Row(
                  children: [
                    Assets.lib.assets.images.ubahUser.image(
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                      ),
                    ),
                    Text(
                      "Ubah Profile",
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 14,
                        color: AppColors.labelPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10, bottom: 10),
            //   child: InkWell(
            //     onTap: showToast,
            //     child: Row(
            //       children: [
            //         Assets.images.followProfile.image(
            //           width: 20,
            //           height: 20,
            //         ),
            //         const Padding(
            //           padding: EdgeInsets.only(
            //             right: 16,
            //           ),
            //         ),
            //         Text(
            //           "Mengikuti",
            //           style: AppTextStyles.poppinsRegular(
            //             fontSize: 10,
            //             color: AppColors.labelPrimary,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       top: 10, bottom: 10),
            //   child: GestureDetector(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: (context) =>
            //               const ListFollowScreen(
            //                   followState:
            //                       FollowState.follower),
            //         ),
            //       );
            //     },
            //     child: Row(
            //       children: [
            //         Image.asset(
            //           "assets/images/followed_profile.png",
            //           width: 20,
            //           height: 20,
            //         ),
            //         const Padding(
            //             padding:
            //                 EdgeInsets.only(right: 16)),
            //         const Text(
            //           "Pengikut",
            //           style: TextStyle(
            //             fontFamily: "poppins",
            //             fontSize: 10,
            //             color:
            //                 Color.fromRGBO(61, 61, 61, 1),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10, bottom: 10),
            //   child: GestureDetector(
            //     onTap: showToast,
            //     child: Row(
            //       children: [
            //         Assets.images.disukaiProfile.image(
            //           width: 20,
            //           height: 20,
            //         ),
            //         const Padding(
            //           padding: EdgeInsets.only(
            //             right: 16,
            //           ),
            //         ),
            //         Text(
            //           "Disukai",
            //           style: AppTextStyles.poppinsRegular(
            //             fontSize: 10,
            //             color: AppColors.labelPrimary,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10, bottom: 10),
            //   child: InkWell(
            //     onTap: showToast,
            //     child: Row(
            //       children: [
            //         Assets.images.wishlistProfile.image(
            //           width: 20,
            //           height: 20,
            //         ),
            //         const Padding(padding: EdgeInsets.only(right: 16)),
            //         Text(
            //           "Wishlist",
            //           style: AppTextStyles.poppinsRegular(
            //             fontSize: 10,
            //             color: AppColors.labelPrimary,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: InkWell(
                onTap: () {
                  // Get.to(()=>PurchasedHistoryScreen(),);
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const PurchasedHistoryScreen(),
                  //   ),
                  // );
                },
                child: Row(
                  children: [
                    Assets.lib.assets.images.historyProfile.image(
                      width: 25,
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                      ),
                    ),
                    Text(
                      "Status Pembayaran",
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 14,
                        color: AppColors.labelPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: InkWell(
                onTap: () {
                  // controller.attemptLogout();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Assets.lib.assets.images.logoutProfile.image(
                      width: 25,
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 16,
                      ),
                    ),
                    Text(
                      "LogOut",
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 14,
                        color: AppColors.labelPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
