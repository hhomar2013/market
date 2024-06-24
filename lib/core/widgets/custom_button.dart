import 'package:flutter/material.dart';
import 'package:frutis_market/core/constans.dart';
import 'package:frutis_market/core/utils/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
