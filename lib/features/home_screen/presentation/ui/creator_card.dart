import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/constants/constants.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/creator_model.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/bottomsheet_creator.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:garasound_customer_apps/injector.dart';

class CreatorCard extends StatelessWidget {
  CreatorCard({Key? key, required this.model}) : super(key: key);

  final CreatorModel model;

  final controller = Get.put(
    HomeScreenController(
      sl(),
      sl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.getCreatorForBottomSheet(model.id!);
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return BottomSheetCreator();
          },
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              model.profile_image != ""
                  ? Image.network(
                "$FILE_BASE_URL_DEV/Creator/${model.id}/Profile/${model.profile_image}",
                width: 100,
                height: 100,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Assets.lib.assets.images.emptyState.image(
                    width: 100,
                    height: 100,
                  );
                },
              )
                  : Assets.lib.assets.images.emptyState.image(width: 100, height: 100),
              SizedBox(
                width: 100,
                child: Text(
                  model.username.toString(),
                  style: AppTextStyles.creamRegular(fontSize: 14),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  "${model.creator_spc_genre1},${model.creator_spc_genre2},${model.creator_spc_genre3}",
                  style: AppTextStyles.poppinsRegular(
                    color: AppColors.labelSecondary,
                    fontSize: 8,
                  ),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              // SizedBox(
              //   width: 100,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         children: [
              //           const Icon(
              //             Icons.star,
              //             color: Colors.yellow,
              //             size: 15,
              //           ),
              //           Text(
              //             model.creatorRating.toString(),
              //             style: const TextStyle(fontSize: 10),
              //           )
              //         ],
              //       ),
              //       GestureDetector(
              //         onTap: showToast,
              //         child: const Icon(
              //           Icons.favorite_outline,
              //           color: Colors.black,
              //           size: 15,
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
