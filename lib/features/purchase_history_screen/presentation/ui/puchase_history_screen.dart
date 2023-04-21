import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/presentation/manager/purchase_history_screen_controller.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/presentation/ui/item_purchased.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/presentation/ui/nav_icon.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:garasound_customer_apps/injector.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PurchaseHistoryScreen extends StatelessWidget {
  PurchaseHistoryScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    PurchaseHistoryScreenController(
      sl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          NavIconButton(
            Assets.lib.assets.images.icNotification,
            onTap: () {
              Fluttertoast.showToast(
                  msg: "This feature is coming soon",
                  toastLength: Toast.LENGTH_SHORT);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GetBuilder<PurchaseHistoryScreenController>(
                builder: (controller) {
                  if (controller.status == PageStatus.LOADING) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (controller.status == PageStatus.LOADED) {
                    if (controller.purchasedHistoryData.isNotEmpty) {
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ItemPurchased(
                              model: controller.purchasedHistoryData[index],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        scrollDirection: Axis.vertical,
                        itemCount: controller.purchasedHistoryData.length,
                      );
                    } else {
                      return const Center(
                        child: Text(
                            "Oops, belum ada transaksi nih, yuk beli beat sekarang!"),
                      );
                    }
                  } else if (controller.status == PageStatus.ERROR) {
                    return Center(
                      child: Text(controller.errorMessage),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
        onRefresh: () async {
          await controller.getListPurchaseHistory();
          return Future.value();
        },
      ),
    );
  }
}
