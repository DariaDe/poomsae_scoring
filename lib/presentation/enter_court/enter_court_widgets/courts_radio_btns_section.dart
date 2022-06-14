import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:poomsae_scoring/presentation/enter_court/controllers/enter_court.controller.dart';
import 'package:poomsae_scoring/presentation/enter_court/enter_court_widgets/court_radio_btn.dart';

import '../../../infrastructure/constants/colors.dart';
import '../../../infrastructure/constants/texts.dart';

class CourtsRadioButtonsSection extends StatelessWidget {
  CourtsRadioButtonsSection({Key? key}) : super(key: key);

  final EnterCourtController enterCourtController =
      Get.put(EnterCourtController());

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 4,
        color: colorLightGreyBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Obx(() => CourtRadioButton(
                      radioBtnValue: 1,
                      textValue: oneText,
                      groupValue: enterCourtController.courtRadioValue.value,
                      onChanged: enterCourtController.changeCourt,
                    ))),
            Obx(() => CourtRadioButton(
                  radioBtnValue: 2,
                  textValue: twoText,
                  groupValue: enterCourtController.courtRadioValue.value,
                  onChanged: enterCourtController.changeCourt,
                ))
          ],
        ),
      ),
    );
  }
}
