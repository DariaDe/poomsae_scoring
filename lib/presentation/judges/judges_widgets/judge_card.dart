import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:poomsae_scoring/infrastructure/data/models/judge/judge_model.dart';

import '../../../infrastructure/constants/colors.dart';
import '../../../infrastructure/constants/texts.dart';
import '../../base_widgets/bright_button.dart';

class JudgeCard extends StatelessWidget {
  JudgeCard({Key? key, required this.judge}) : super(key: key);

  final JudgeModel judge;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 6,
        color: colorLightGreyBackground,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 10),
            child: CircleAvatar(
              backgroundColor: colorLightGreyBackground,
              backgroundImage: judge.avatarUrl.isNotEmpty
                  ? NetworkImage(judge.avatarUrl)
                  : AssetImage('assets/images/man.png') as ImageProvider,
              maxRadius: 65,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              '${judge.lastName}\n${judge.firstName} ${judge.thirdName}',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          BrightButton(
              btnText: chooseBtnText,
              onTap: () {},
              height: 50,
              width: 150,
              textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: colorWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}
