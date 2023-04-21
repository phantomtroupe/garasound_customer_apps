import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:garasound_customer_apps/core/constants/constants.dart';
import 'package:garasound_customer_apps/core/constants/page_status.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/creator_model.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/track_model.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/use_case/creator_use_case.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/use_case/track_use_case.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  // CREATOR DATA
  PageStatus creatorStatus = PageStatus.IDLE;
  String creatorErrorMessage = "";
  List<CreatorModel> creators = [];
  CreatorUseCase creatorUseCase;

  // TRACK DATA
  PageStatus trackStatus = PageStatus.IDLE;
  String trackErrorMessage = "";
  List<TrackModel> tracks = [];
  TrackUseCase trackUseCase;

  // BOTTOMSHEET CREATOR
  PageStatus bottomSheetCreatorStatus = PageStatus.IDLE;
  String bottomSheetCreatorErrorMessage = "";
  CreatorModel? bottomSheetCreatorData;

  HomeScreenController(this.creatorUseCase, this.trackUseCase);

  @override
  void onInit() {
    super.onInit();
    getListCreator();
    getListTrack();
  }

  Future<void> getListCreator() async {
    creatorStatus = PageStatus.LOADING;
    update();

    var creator = await creatorUseCase.getListCreator();

    if (creator.isRight) {
      creatorStatus = PageStatus.LOADED;
      creators = creator.right;
    } else {
      creatorStatus = PageStatus.ERROR;
      creatorErrorMessage = creator.left;
    }

    update();
  }

  Future<void> getListTrack() async {
    trackStatus = PageStatus.LOADING;
    update();

    var track = await trackUseCase.getListTrack();

    if (track.isRight) {
      trackStatus = PageStatus.LOADED;
      tracks = track.right;
    } else {
      trackStatus = PageStatus.ERROR;
      trackErrorMessage = track.left;
    }

    update();
  }

  ClipRRect getTrackArtwork(TrackModel model) {
    if (model.track_artwork != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "$FILE_BASE_URL_DEV/Creator/${model.id}/Artwork/${model.track_artwork}",
          height: 100.0,
          width: 100.0,
          errorBuilder: (context, error, stackTrace) {
            return Assets.lib.assets.images.emptyState.image(
              width: 100,
              height: 100,
            );
          },
        ),
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Assets.lib.assets.images.emptyState.image(
          width: 100,
          height: 100,
        ),
      );
    }
  }

  ClipOval getCreatorProfileImage(CreatorModel model) {
    if (model.profile_image != null) {
      return ClipOval(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            "$FILE_BASE_URL_DEV/Creator/${model.id!}/Profile/${model.profile_image.toString()}",
            height: 100.0,
            width: 100.0,
            errorBuilder: (context, error, stackTrace) {
              return Assets.lib.assets.images.emptyState.image(
                width: 100,
                height: 100,
              );
            },
          ),
        ),
      );
    } else {
      return ClipOval(
        child: Assets.lib.assets.images.emptyState.image(
          width: 100,
          height: 100,
        ),
      );
    }
  }

  Future<void> getCreatorForBottomSheet(String creatorId) async {
    bottomSheetCreatorStatus = PageStatus.IDLE;
    bottomSheetCreatorErrorMessage = "";
    bottomSheetCreatorData = null;

    bottomSheetCreatorStatus = PageStatus.LOADING;
    update();

    var creatorData = await creatorUseCase.getCreatorById(creatorId);

    if(creatorData.isRight){
      bottomSheetCreatorStatus = PageStatus.LOADED;
      bottomSheetCreatorData = creatorData.right;
    }else{
      bottomSheetCreatorStatus = PageStatus.ERROR;
      bottomSheetCreatorErrorMessage = creatorData.left;
    }

    update();
  }
}
