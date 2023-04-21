import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/creator_card.dart';
import 'package:get/get.dart';

class PopularCreator extends StatelessWidget {
  const PopularCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Creator",
                style: AppTextStyles.poppinsBold(
                    fontSize: 20, color: AppColors.primary),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4),
              ),
              GetBuilder<HomeScreenController>(
                builder: (controller) {
                  if (controller.creatorStatus == PageStatus.LOADING) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (controller.creatorStatus == PageStatus.LOADED) {
                    if (controller.creators.isNotEmpty) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: controller.creators
                              .map((e) => CreatorCard(model: e))
                              .toList(),
                        ),
                      );
                    } else {
                      return const Center(
                        child: Text("No Tracks Available"),
                      );
                    }
                  } else if (controller.creatorStatus == PageStatus.ERROR) {
                    return Center(
                      child: Text(controller.creatorErrorMessage),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
