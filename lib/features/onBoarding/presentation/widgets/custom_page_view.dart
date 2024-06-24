import 'package:flutter/material.dart';
import 'package:frutis_market/features/onBoarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key,@required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      // controller: pageController!,
          children: [
            PageViewItem(
              image: 'assets/images/onBoard1.png',
              title: 'E Shopping',
              subTitle: 'Explore  top organic fruits & grab them',
            ),
            PageViewItem(
              image: 'assets/images/onBoard2.png',
              title: 'Delivery on the way',
              subTitle: 'Get your order by speed delivery',
            ),
            PageViewItem(
              image: 'assets/images/onBoard3.png',
              title: 'Delivery Arrived',
              subTitle: 'Order is arrived at your Place',
            ),
          ],
    );
  }
}
