import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/app_bar.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/popular_creator.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/popular_tracks.dart';
import 'package:get/get.dart';
import 'package:garasound_customer_apps/injector.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    HomeScreenController(
      sl(),
      sl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainScreenAppBar(),
        Expanded(
          child: RefreshIndicator(
            child: ListView(
              children: [
                // GenreRecommendation(),
                PopularCreator(),
                PopularTracks()
              ],
            ),
            onRefresh: () async {
              await controller.getListCreator();
              await controller.getListTrack();
              return Future.value();
            },
          ),
        ),
      ],
    );
  }
}
