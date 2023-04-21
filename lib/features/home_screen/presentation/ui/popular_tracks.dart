import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/track_card.dart';
import 'package:get/get.dart';

class PopularTracks extends StatelessWidget {
  const PopularTracks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Tracks",
                style: AppTextStyles.poppinsBold(
                  fontSize: 20,
                  color: AppColors.primary,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 16,
                ),
              ),
              GetBuilder<HomeScreenController>(
                builder: (controller) {
                  if (controller.trackStatus == PageStatus.LOADING) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (controller.trackStatus == PageStatus.LOADED) {
                    if (controller.tracks.isNotEmpty) {
                      return Column(
                        children: controller.tracks
                            .map((e) => TrackCard(model: e))
                            .toList(),
                      );
                    } else {
                      return const Center(
                        child: Text("No Tracks Available"),
                      );
                    }
                  } else if (controller.trackStatus == PageStatus.ERROR) {
                    return Center(
                      child: Text(controller.trackErrorMessage),
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
