import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class CustomGeneralButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomGeneralButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 60,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonIcons extends StatelessWidget {
  final String text;
  final Color color;
  final IconData iconData;
  final VoidCallback onTap;

  const CustomButtonIcons(
      {Key key, @required this.text, this.color, this.iconData, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizontelSpace(2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
