// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class MoreSyptoms extends StatelessWidget {
  const MoreSyptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Symptoms"
            .text
            .start
            .bold
            .headline4(context)
            .color(context.primaryColor)
            .make(),
        10.heightBox,
        "There are various types of behavioral disorders that can affect people. Some of these include: compulsive behavior, poor eye contact, repetitive movements, and self-harm.In children, developmental disorders such as speech delay or learning disability can affect their ability to pay attention. Also, people with these disorders are more likely to feel anxious or depressed. You can check out detailed in examples of social charectistics related to ASD."
            .text
            .lg
            .center
            .make()
            .px(10)
      ],
    );
  }
}
