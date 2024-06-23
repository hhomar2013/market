import 'package:flutter/material.dart';
import 'package:frutis_market/features/onBoarding/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    geToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();

  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(
              opacity:fadingAnimation!,
            child: Text('Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Image.asset('assets/images/splash_view.png',width: double.infinity,),
        ],
      ),
    );
  }

  void geToNextView() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=> OnBoardingView() , transition: Transition.fade);
    });
  }
}
