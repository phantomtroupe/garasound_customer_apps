import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:get/get.dart';

class BottomSheetCreator extends StatelessWidget {
  BottomSheetCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: GetBuilder<HomeScreenController>(
        builder: (controller) {
          if (controller.bottomSheetCreatorStatus == PageStatus.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (controller.bottomSheetCreatorStatus == PageStatus.LOADED) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 8, bottom: 16, left: 32, right: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(
                      "Slide down to close",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: controller.getCreatorProfileImage(controller.bottomSheetCreatorData!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(controller.bottomSheetCreatorData!.username!,
                        style: AppTextStyles.poppinsBold(
                          fontSize: 18,
                          color: AppColors.labelPrimary,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Text(
                      controller.bottomSheetCreatorData!.specialist!,
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 0),
                  //   child: Text(
                  //     "${Provider.of<HomeScreenProvider>(context).bottomSheetCreatorModel!.creatorSpcGenre1!}," +
                  //         "${Provider.of<HomeScreenProvider>(context).bottomSheetCreatorModel!.creatorSpcGenre2!}," +
                  //         "${Provider.of<HomeScreenProvider>(context).bottomSheetCreatorModel!.creatorSpcGenre3!}",
                  //     style: TextStyle(
                  //       fontFamily: "poppins",
                  //       fontSize: 16,
                  //       color: Colors.grey,
                  //     ),
                  //   ),
                  // ),
                  const Divider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: GestureDetector(
                            onTap: () {
                              // Get.to(
                              //       () => CreatorPage(
                              //     model: controller.bottomSheetCreator.data!,
                              //   ),
                              // );
                              // Provider.of<CreatorPageScreenProvider>(context,
                              //         listen: false)
                              //     .fetchCreatorById(value
                              //         .bottomSheetCreatorModel!.id
                              //         .toString());
                              // Provider.of<CreatorPageScreenProvider>(context,
                              //         listen: false)
                              //     .fetchCreatorTracks(value
                              //         .bottomSheetCreatorModel!.id
                              //         .toString());
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (_) => CreatorPage(),
                              //   ),
                              // );
                            },
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.person_outline,
                                  size: 30,
                                ),
                                Padding(padding: EdgeInsets.only(right: 16)),
                                Text("Profile"),
                              ],
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(top: 8, bottom: 8),
                        //   child: GestureDetector(
                        //     onTap: () {},
                        //     child: Row(
                        //       children: [
                        //         Icon(
                        //           Icons.person_add_alt_outlined,
                        //           size: 30,
                        //         ),
                        //         Padding(padding: EdgeInsets.only(right: 16)),
                        //         Text("Follow"),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(top: 8, bottom: 8),
                        //   child: GestureDetector(
                        //     onTap: () {},
                        //     child: Row(
                        //       children: [
                        //         Icon(
                        //           Icons.favorite_outline,
                        //           size: 30,
                        //         ),
                        //         Padding(padding: EdgeInsets.only(right: 16)),
                        //         Text("Like"),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(top: 8, bottom: 8),
                        //   child: GestureDetector(
                        //     onTap: () {},
                        //     child: Row(
                        //       children: [
                        //         Icon(
                        //           Icons.report_off_outlined,
                        //           size: 30,
                        //         ),
                        //         Padding(padding: EdgeInsets.only(right: 16)),
                        //         Text("Laporkan"),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else if (controller.bottomSheetCreatorStatus == PageStatus.ERROR) {
            return Center(
              child: Text(
                controller.bottomSheetCreatorErrorMessage.toString(),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
