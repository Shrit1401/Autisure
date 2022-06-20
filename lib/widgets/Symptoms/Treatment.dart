// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class Treatment extends StatelessWidget {
  const Treatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Treatment"
            .text
            .start
            .bold
            .headline4(context)
            .color(AutiTheme.primary)
            .make(),
        10.heightBox,
        "Early detection, as well as behavioral, educational, and family therapy, may help to alleviate symptoms and promote growth and learning."
            .text
            .lg
            .center
            .make()
            .px(10),
        10.heightBox,
        "Therapies which can be performed Anger management, family therapy, applied behaviour analysis, behaviour therapy, sensory processing, animal-assisted therapy, and others."
            .text
            .lg
            .center
            .make()
            .px(10)
      ],
    );
  }
}
