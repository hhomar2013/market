import 'package:flutter/material.dart';
import 'package:frutis_market/core/utils/size_config.dart';
import 'package:frutis_market/core/widgets/custom_button.dart';
import 'package:frutis_market/features/onBoarding/presentation/widgets/custom_indicator.dart';
import 'package:frutis_market/features/onBoarding/presentation/widgets/custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CustomPageView(
          // pageController: pageController,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize!*3,
            right: 0,
            left: 0,
            child: CustomIndicator(
              // dotIndex: pageController!.hasClients ? pageController?.page : 0,
            )
        ),
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
        ),
        Positioned(
            left: SizeConfig.defaultSize! *1,
            right: SizeConfig.defaultSize! *1,
            bottom: SizeConfig.defaultSize! *1,
            child: CustomButton(text: 'Next',)),

      ],
    );
  }
}
