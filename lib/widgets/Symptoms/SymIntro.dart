// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class SymIntro extends StatelessWidget {
  const SymIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Introduction"
            .text
            .start
            .bold
            .headline4(context)
            .color(context.primaryColor)
            .make(),
        10.heightBox,
        "ASD is a developmental impairment caused by variations in the brain. People with ASD may struggle with social interaction and communication, as well as confined or repetitive habits or hobbies. People with ASD may also learn, move, and pay attention in various ways. It should be noted that some persons who do not have ASD may exhibit some of these symptoms."
            .text
            .lg
            .center
            .make()
            .px(10)
      ],
    );
  }
}
