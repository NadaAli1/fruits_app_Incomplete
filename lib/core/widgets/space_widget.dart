import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class HorizontelSpace extends StatelessWidget {
  final double value;

  const HorizontelSpace(this.value);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  final double value;

  const VerticalSpace(this.value);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * value,
    );
  }
}
