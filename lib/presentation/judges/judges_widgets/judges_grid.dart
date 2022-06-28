import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:poomsae_scoring/presentation/judges/judges_widgets/judge_card.dart';

import '../controllers/judges.controller.dart';

class JudgesGrid extends StatelessWidget {
  JudgesGrid({Key? key}) : super(key: key);

  final JudgesController judgesController = Get.put(JudgesController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.2,
        ),
        itemCount: judgesController.judgesList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(20.0),
              child: JudgeCard(
                judge: judgesController.judgesList[index],
              ));
        });
  }
}
