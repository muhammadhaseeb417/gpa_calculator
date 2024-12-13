import 'package:flutter/material.dart';
import 'package:gpa_calculator/utils/constants/colors.dart';

class Customdropdown extends StatefulWidget {
  const Customdropdown({super.key});

  @override
  State<Customdropdown> createState() => _CustomdropdownState();
}

class _CustomdropdownState extends State<Customdropdown> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'A';

    return Container(
      width: 60,
      height: 40,
      padding: EdgeInsets.all(10),
      color: TColors.textFieldBG,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Padding(
          padding: const EdgeInsets.only(
              right: 6.0), // Adds space between the text and icon
          child: Icon(Icons.arrow_drop_down_sharp),
        ),
        elevation: 16,
        style: TextStyle(color: TColors.primary),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['A', 'B', 'C', 'D']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
