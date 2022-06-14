import 'package:flutter/material.dart';

import '../../base_widgets/custom_radio_button.dart';

class CourtRadioButton extends StatelessWidget {
  const CourtRadioButton(
      {Key? key,
      required this.textValue,
      required this.radioBtnValue,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  final String textValue;
  final int radioBtnValue;
  final int groupValue;
  final void Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textValue,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        CustomRadioButton(
            radioValue: radioBtnValue,
            groupValue: groupValue,
            onChanged: onChanged)
      ],
    );
  }
}
