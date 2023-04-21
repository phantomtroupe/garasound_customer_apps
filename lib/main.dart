import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/splash_screen/presentation/ui/splash_screen.dart';
import 'package:get/get.dart';
import 'injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const GarasoundCustomer());
}

class GarasoundCustomer extends StatelessWidget {
  const GarasoundCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Garasound Customer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          titleTextStyle: AppTextStyles.poppinsSemiBold(
            fontSize: 15,
          ),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
