// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class TestInstructions extends StatelessWidget {
  const TestInstructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Instructions: "
            .text
            .bold
            .headline4(context)
            .color(AutiTheme.primary)
            .makeCentered(),
        50.heightBox,
        "1.The would take around 5 minute to complete the test."
            .text
            .xl2
            .center
            .make()
            .px(20),
        30.heightBox,
        "2.The results may vary with each and every question kindly read all question carefully"
            .text
            .xl2
            .center
            .make()
            .px(20),
        30.heightBox,
        "3.Consult any doctor if you have to ask any query after the result"
            .text
            .xl2
            .center
            .make()
            .px(20),
      ],
    );
  }
}
