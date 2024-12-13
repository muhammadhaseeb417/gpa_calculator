import 'package:flutter/material.dart';

import 'customDropDown.dart';
import 'customTextField.dart';

class CourseInputDetails extends StatelessWidget {
  const CourseInputDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Customtextfield(
          width: 110,
          hintText: 'Subject Name...',
        ),
        Customdropdown(),
        Customtextfield(
          width: 80,
          hintText: 'Credit Hour\'s..',
        ),
        Icon(Icons.cancel)
      ],
    );
  }
}
