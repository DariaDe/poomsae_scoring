import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:poomsae_scoring/infrastructure/constants/colors.dart';
import 'package:poomsae_scoring/infrastructure/constants/image_urls.dart';
import 'package:poomsae_scoring/presentation/enter_court/enter_court_widgets/choose_court_section.dart';
import 'controllers/enter_court.controller.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EnterCourtScreen extends GetView<EnterCourtController> {
  final GlobalKey<FormState> courtState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorLightGreyBackground,
        body: Padding(
          padding: const EdgeInsets.only(
            bottom: 30.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: ChooseCourtSection(),
              ),
              Image.asset(poomsaeImageUrl)
            ],
          ),
        ));
  }
}
