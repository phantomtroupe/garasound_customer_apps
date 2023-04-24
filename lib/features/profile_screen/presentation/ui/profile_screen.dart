import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/controller/profile_screen_controller.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/ui/contact_person.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/ui/profile.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/ui/profile_menu.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    ProfileScreenController(
    ),
  );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      builder: (controller) {
        // if(controller.customerProfile.customerName != null){
      if(true){
          return Stack(
            children: [
              const Profile(),
              ProfileMenu(),
              const ContactPerson(),
            ],
          );
        }else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
