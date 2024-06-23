import 'package:flutter/material.dart';
import 'package:frutis_market/core/utils/size_config.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Positioned(
          top:  SizeConfig.defaultSize! * 1,
          right: 31,
          child: Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0Xff898989)
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
