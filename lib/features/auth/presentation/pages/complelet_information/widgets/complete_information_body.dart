import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/auth/presentation/pages/complelet_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        CompleteInformationItem(text: 'Enter Your Name'),
        VerticalSpace(2),
        CompleteInformationItem(text: 'Enter Your Phone Number'),
        VerticalSpace(2),
        CompleteInformationItem(
          text: 'Enter Your Adaress',
          maxLines: 3,
        ),
        VerticalSpace(5),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomGeneralButton(
            text: 'Login',
          ),
        ),
      ],
    );
  }
}
