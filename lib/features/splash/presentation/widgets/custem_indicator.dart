import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  final double dotsposition;

  const CustomDotsIndicator({@required this.dotsposition});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotsposition,
      decorator: DotsDecorator(
        activeColor: mainColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: mainColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
