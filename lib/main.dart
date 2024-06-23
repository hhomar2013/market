import 'package:flutter/material.dart';
import 'package:frutis_market/core/utils/size_config.dart';
import 'package:frutis_market/features/splash/presentation/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

