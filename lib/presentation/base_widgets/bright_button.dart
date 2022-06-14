import 'package:flutter/material.dart';

import '../../infrastructure/constants/colors.dart';

class BrightButton extends StatelessWidget {
  const BrightButton(
      {Key? key,
      required this.btnText,
      required this.onTap,
      required this.height,
      required this.width,
      required this.textStyle})
      : super(key: key);

  final String btnText;
  final VoidCallback onTap;
  final double height;
  final double width;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(
            btnText,
            style: textStyle,
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorPurpleBlue,
                colorPurpleBright,
              ],
            ),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  offset: Offset(-3.0, -3.0),
                  blurRadius: 10.0,
                  color: colorWhite),
              BoxShadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 10.0,
                  color: colorGreyDarkPrimary),
            ]),
      ),
    );
  }
}
