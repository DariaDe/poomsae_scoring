import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:poomsae_scoring/presentation/judges/judges_widgets/judges_grid.dart';

import '../../infrastructure/constants/colors.dart';
import 'controllers/judges.controller.dart';

class JudgesScreen extends GetView<JudgesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorLightGreyBackground,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Выберите судью',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 46,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: JudgesGrid(),
              ),
            ),
          ],
        ));
  }
}
