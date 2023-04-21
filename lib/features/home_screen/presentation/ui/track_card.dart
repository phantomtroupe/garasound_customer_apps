import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/home_screen/domain/model/track_model.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/controller/home_screen_controller.dart';
import 'package:get/get.dart';
import 'package:garasound_customer_apps/injector.dart';

class TrackCard extends StatelessWidget {
  TrackCard({Key? key, required this.model}) : super(key: key);

  final TrackModel model;

  final controller = Get.put(
    HomeScreenController(
      sl(),
      sl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return MusicScreen(model: model);
        //     },
        //   ),
        // );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      bottom: 4,
                    ),
                    child: controller.getTrackArtwork(model),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return MusicScreen(model: model);
                    //     },
                    //   ),
                    // );
                  },
                ),
              ),
              Expanded(
                flex: 3,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return MusicScreen(model: model);
                    //     },
                    //   ),
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          model.track_name.toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: const TextStyle(
                              fontFamily: "poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "By ${model.creator_username.toString()} . ${model.creator_total_track} Tracks",
                          style: const TextStyle(
                            fontFamily: "poppins",
                            fontSize: 14,
                          ),
                        ),
                        // const Padding(padding: EdgeInsets.only(top: 8)),
                        // Row(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 4, right: 4),
                        //       child: Container(
                        //         decoration: const BoxDecoration(
                        //           color: Color.fromRGBO(57, 154, 209, 1),
                        //           borderRadius: BorderRadius.all(
                        //             Radius.circular(32),
                        //           ),
                        //         ),
                        //         child: Padding(
                        //             padding: const EdgeInsets.only(
                        //               left: 8,
                        //               right: 8,
                        //               top: 4,
                        //               bottom: 4,
                        //             ),
                        //             child: Row(
                        //               children: [
                        //                 const Icon(
                        //                   Icons.star,
                        //                   size: 10,
                        //                   color: Colors.yellow,
                        //                 ),
                        //                 const Padding(
                        //                     padding: EdgeInsets.only(right: 4)),
                        //                 Text(
                        //                   "${model.creatorRating}",
                        //                   style: const TextStyle(
                        //                       fontSize: 10,
                        //                       color: Colors.white),
                        //                 )
                        //               ],
                        //             )),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 4, right: 4),
                        //       child: Container(
                        //         decoration: const BoxDecoration(
                        //             color: Color.fromRGBO(57, 154, 209, 1),
                        //             borderRadius: BorderRadius.all(
                        //               Radius.circular(32),
                        //             )),
                        //         child: const Padding(
                        //             padding: EdgeInsets.only(
                        //               left: 8,
                        //               right: 8,
                        //               top: 4,
                        //               bottom: 4,
                        //             ),
                        //             child: Icon(
                        //               Icons.share,
                        //               size: 10,
                        //               color: Colors.white,
                        //             )),
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // controller.getCreatorForBottomSheet(model.idCreator!);
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return BottomSheetCreator();
                      //   },
                      // );
                    },
                    child: const Icon(Icons.more_vert_rounded),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
