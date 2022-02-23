import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/on_boarding/presentation/on_boarding_view.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation fadingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController);
    animationController.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation,
            child: Text(
              'Fruits Market',
              style: TextStyle(
                color: Colors.white,
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Image.asset('assets/images/fruits.png')
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardindView(),
        ),
      );
    });
  }
}
