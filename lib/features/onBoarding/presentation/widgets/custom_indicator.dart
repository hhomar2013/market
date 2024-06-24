import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:frutis_market/core/constans.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});
  // final double? dotIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(color: kMainColor),
        ),
      ),
      dotsCount: 3,
      position: 0,
    );;
  }
}


