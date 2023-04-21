import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/search_screen/presentation/controller/search_screen_controller.dart';
import 'package:garasound_customer_apps/features/search_screen/presentation/ui/search_app_bar.dart';
import 'package:garasound_customer_apps/injector.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    SearchScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchAppBar(),
        Expanded(
          child: GetBuilder<SearchScreenController>(
            builder: (controller) {
              // if (controller.searchResult.status == Status.LOADING) {
              //   return const Center(
              //     child: CircularProgressIndicator(),
              //   );
              // } else if (controller.searchResult.status == Status.COMPLETED) {
              //   return ListView.builder(
              //     itemBuilder: (context, index) {
              //       return TrackCardSearch(
              //           model: controller.searchResult.data![index]);
              //     },
              //     itemCount: controller.searchResult.data!.length,
              //   );
              // } else if (controller.searchResult.status == Status.ERROR) {
              //   return Center(
              //     child: Text(controller.searchResult.error.toString()),
              //   );
              // } else {
              return Container();
              // }
            },
          ),
        ),
      ],
    );
  }
}
