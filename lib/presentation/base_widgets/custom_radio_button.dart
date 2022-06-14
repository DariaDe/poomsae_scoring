import 'package:flutter/material.dart';

import '../../infrastructure/constants/colors.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {Key? key,
      required this.radioValue,
      required this.onChanged,
      required this.groupValue})
      : super(key: key);

  final int radioValue;
  final int groupValue;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Radio(
        fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return colorPurpleBright;
          } else if (states.contains(MaterialState.selected)) {
            return colorPurpleBright;
          }
          if (states.contains(MaterialState.focused)) {
            return colorPurpleBright;
          } else {
            return colorPurpleBlue;
          }
        }),
        value: radioValue,
        groupValue: groupValue,
        onChanged: (val) {
          onChanged(val as int);
        },
      ),
    );
  }
}
