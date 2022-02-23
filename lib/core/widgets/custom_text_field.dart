import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType textInputType;
  final Widget suffixIcon;
  final ValueSetter onSaved;
  final ValueSetter onChanged;
  final int maxLines;

  const CustomTextFormField({
    Key key,
    @required this.textInputType,
    this.suffixIcon,
     this.onSaved,
    this.onChanged,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            ),
          )),
    );
  }
}
