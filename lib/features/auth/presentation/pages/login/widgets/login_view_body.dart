import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/auth/presentation/pages/complelet_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        Image.asset(logo),
        VerticalSpace(5),
        Text(
          'Fruits Market',
          style: TextStyle(
              color: mainColor, fontSize: 51, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonIcons(
                  text: 'Log in with',
                  color: Color(0xFFdb3236),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompleteInformationView(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonIcons(
                  text: 'Log in with',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompleteInformationView(),
                      ),
                    );
                  },
                  color: Color(0xFF4267B2),
                ),
              ),
            )
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
