import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/core/cosmetics/buttons.dart';
import 'package:garasound_customer_apps/features/search_screen/presentation/controller/search_screen_controller.dart';
import 'package:get/get.dart';

class FilterDialogue extends StatelessWidget {
  const FilterDialogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContentDialogue();
  }
}

class ContentDialogue extends StatefulWidget {
  const ContentDialogue({Key? key}) : super(key: key);

  @override
  State<ContentDialogue> createState() => _ContentDialogueState();
}

class _ContentDialogueState extends State<ContentDialogue> {
  final ButtonStyle flatButtonStyleSignIn = TextButton.styleFrom(
    backgroundColor: const Color.fromRGBO(57, 154, 209, 1),
    padding: const EdgeInsets.all(0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(18),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    // Provider.of<SearchScreenProvider>(context, listen: false)
    //     .getCategoryListAndConstants();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Filters",
                style: AppTextStyles.poppinsBold(fontSize: 16),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categories",
                style: AppTextStyles.poppinsRegular(
                  fontSize: 14,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GetBuilder<SearchScreenController>(
                builder: (controller) {
                  // if (controller.genres.status == Status.LOADING) {
                  //   return const Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  // } else if (controller.genres.status == Status.COMPLETED) {
                  //   return Wrap(
                  //     alignment: WrapAlignment.start,
                  //     direction: Axis.horizontal,
                  //     children: controller.genres.data!.map((e) {
                  //       return CheckBoxCategory(
                  //         genreName: e.genreName.toString(),
                  //         genre_id: e.id!,
                  //       );
                  //     }).toList(),
                  //   );
                  // } else if (controller.genres.status == Status.ERROR) {
                  //   return Center(
                  //     child: Text(
                  //       controller.genres.error.toString(),
                  //     ),
                  //   );
                  // } else {
                    return Container();
                  // }
                },
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "BPM",
                style: AppTextStyles.poppinsRegular(fontSize: 14),
              ),
            ),
            GetBuilder<SearchScreenController>(
              builder: (controller) {
                // if (controller.filter.status == Status.COMPLETED) {
                //   return RangeSlider(
                //     values: controller.currentBpmRangeValues,
                //     max: controller.filter.data!.bpmMax!,
                //     divisions: controller.filter.data!.bpmMax!.toInt(),
                //     labels: RangeLabels(
                //       controller.currentBpmRangeValues.start.round().toString(),
                //       controller.currentBpmRangeValues.end.round().toString(),
                //     ),
                //     onChanged: (RangeValues values) {
                //       controller.updateBpmValues(values);
                //     },
                //   );
                // } else if (controller.filter.status == Status.LOADING) {
                //   return const Center(
                //     child: CircularProgressIndicator(),
                //   );
                // } else if (controller.filter.status == Status.ERROR) {
                //   return Center(
                //     child: Text(controller.filter.error.toString()),
                //   );
                // } else {
                  return Container();
                // }
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Range Harga",
                style: AppTextStyles.poppinsRegular(fontSize: 14),
              ),
            ),
            GetBuilder<SearchScreenController>(
              builder: (controller) {
                // if (controller.filter.status == Status.COMPLETED) {
                //   return RangeSlider(
                //     values: controller.currentPriceRangeValue,
                //     max: controller.filter.data!.priceMax!,
                //     divisions: controller.filter.data!.priceMax!.toInt(),
                //     labels: RangeLabels(
                //       controller.currentPriceRangeValue.start
                //           .round()
                //           .toString(),
                //       controller.currentPriceRangeValue.end.round().toString(),
                //     ),
                //     onChanged: (RangeValues values) {
                //       controller.updatePriceValues(values);
                //     },
                //   );
                // } else if (controller.filter.status == Status.LOADING) {
                //   return const Center(
                //     child: CircularProgressIndicator(),
                //   );
                // } else if (controller.filter.status == Status.ERROR) {
                //   return Center(
                //     child: Text(controller.filter.error.toString()),
                //   );
                // } else {
                  return Container();
                // }
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 8),
                child: ButtonPrimary(
                  height: 40,
                  width: double.infinity,
                  text: "Tampilkan Hasil",
                  onpressed: () {
                    // controller.getFilteredTrack();
                    Get.back();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
