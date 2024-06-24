import 'package:flutter/material.dart';
// import 'package:frutis_market/core/constans.dart';
import 'package:frutis_market/core/space_widget.dart';
import 'package:frutis_market/core/utils/size_config.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.image, this.title, this.subTitle});
  final String? image;
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(2.2),
        SizedBox(height: SizeConfig.defaultSize!*2,child: Image.asset(image!)),
        const VerticalSpace(.5),
        Text(
            title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2F2E41),
            fontWeight:FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(.15),
        Text(
            subTitle!,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xff78787C),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
