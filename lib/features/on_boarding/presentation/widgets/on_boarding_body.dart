import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/auth/presentation/pages/login/login_view.dart';
import 'package:fruits_market/features/splash/presentation/widgets/custem_indicator.dart';
import 'package:fruits_market/features/splash/presentation/widgets/custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize * 15,
          left: 0,
          right: 0,
          child: CustomDotsIndicator(
            dotsposition: pageController.hasClients ? pageController.page : 0,
          ),
        ),
        Visibility(
          visible: pageController.hasClients
              ? (pageController.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize * 8,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff898989),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize * 10,
          right: SizeConfig.defaultSize * 10,
          bottom: SizeConfig.defaultSize * 3,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController.page < 2) {
                pageController.nextPage(
                  duration: Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView(),
                  ),
                );
              }
            },
            text: pageController.hasClients
                ? (pageController.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
