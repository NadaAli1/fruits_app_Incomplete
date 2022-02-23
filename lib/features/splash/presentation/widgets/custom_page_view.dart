import 'package:flutter/material.dart';
import 'package:fruits_market/features/splash/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;

  const CustomPageView({Key key, @required this.pageController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/e.png',
          title: 'E Shopping',
          subTitle: 'Explor top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived in your place',
        ),
      ],
    );
  }
}
