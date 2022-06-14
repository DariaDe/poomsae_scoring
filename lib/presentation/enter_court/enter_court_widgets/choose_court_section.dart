import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:poomsae_scoring/presentation/enter_court/enter_court_widgets/courts_radio_btns_section.dart';

import '../../../infrastructure/constants/colors.dart';
import '../../../infrastructure/constants/texts.dart';
import '../../base_widgets/bright_button.dart';
import '../controllers/enter_court.controller.dart';

class ChooseCourtSection extends StatelessWidget {
  ChooseCourtSection({Key? key}) : super(key: key);

  final EnterCourtController enterCourtController =
      Get.put(EnterCourtController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Text(
            enterCourtHeadingText,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 46,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: CourtsRadioButtonsSection(),
        ),
        BrightButton(
          btnText: enterCourtBtnText,
          onTap: enterCourtController.sendCourt,
          width: 200,
          height: 65,
          textStyle: TextStyle(
              fontFamily: 'Montserrat',
              color: colorWhite,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
