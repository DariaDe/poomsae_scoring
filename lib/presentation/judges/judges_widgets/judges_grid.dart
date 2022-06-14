import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:poomsae_scoring/presentation/judges/judges_widgets/judge_card.dart';

class JudgesGrid extends StatelessWidget {
  JudgesGrid({Key? key}) : super(key: key);

//todo remove when Judge model comes
  var imageRoutes = [
    'assets/images/man.png',
    'assets/images/man_2.png',
    'assets/images/woman.png',
    'assets/images/woman_2.png'
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.2,
        ),
        itemBuilder: (context, index) {
          var avatar = imageRoutes[Random().nextInt(imageRoutes.length)];
          return Padding(
              padding: const EdgeInsets.all(20.0),
              child: JudgeCard(
                avatar: avatar,
              ));
        });
  }
}
