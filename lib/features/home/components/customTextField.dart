import 'package:flutter/material.dart';
import 'package:gpa_calculator/utils/constants/colors.dart';

class Customtextfield extends StatelessWidget {
  final double width;
  final String hintText;
  const Customtextfield(
      {super.key, required this.width, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      color: TColors.textFieldBG,
      // color: Colors.black,
      child: TextField(
        decoration: InputDecoration(
          border: null,
          hintText: hintText,
          // borderSide:
        ),
      ),
    );
  }
}
