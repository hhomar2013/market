import 'package:flutter/material.dart';
import 'package:frutis_market/core/constans.dart';
import 'package:frutis_market/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
