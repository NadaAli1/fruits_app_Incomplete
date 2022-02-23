import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

import 'package:fruits_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const PageViewItem({Key key, this.image, this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(15),
        SizedBox(
          height: SizeConfig.defaultSize * 35,
          child: Image.asset(image),
        ),
        VerticalSpace(2),
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        VerticalSpace(1),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
