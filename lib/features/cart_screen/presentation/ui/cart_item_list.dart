import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/controller/cart_screen_controller.dart';
import 'package:get/get.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<CartScreenController>(
        builder: (controller) {
          // if (controller.carts.status == Status.LOADING) {
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // } else if (controller.carts.status == Status.COMPLETED) {
          //   if(controller.carts.data!.isNotEmpty){
          //     return ListView.builder(
          //       itemCount: controller.carts.data!.length,
          //       itemBuilder: (context, index) {
          //         return CartItem(cartModel: controller.carts.data![index]);
          //       },
          //     );
          //   }else{
          //     return const Center(
          //       child: Text("Belum Ada Item di Cart"),
          //     );
          //   }
          // }else if(controller.carts.status == Status.ERROR){
          //   return Center(
          //     child: Text(controller.carts.error.toString()),
          //   );
          // } else{
            return Container();
          // }
        },
      ),
    );
  }
}
