import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CompleteInformationItem extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextInputType textInputType;

  const CompleteInformationItem(
      {Key key, @required this.text, this.maxLines, this.textInputType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 1.5625,
              color: Color(0xff0c0b0b),
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
          VerticalSpace(2),
          CustomTextFormField(
            textInputType: textInputType,
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
