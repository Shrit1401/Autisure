// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialCharacterstics extends StatelessWidget {
  const SocialCharacterstics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        initiallyExpanded: true,
        leading: const Icon(
          Icons.info_outline,
          color: Colors.black,
        ),
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        title: "Examples of social characteristics related to ASD"
            .text
            .lg
            .color(Colors.black)
            .center
            .make(),
        children: [
          10.heightBox,
          const Text(
            ' • Avoids or does not maintain eye contact By 9 months of age, he does not respond to his name.\n\n'
            ' • By 9 months of age, does not exhibit facial expressions such as happiness, sadness, anger, or surprise.\n\n'
            ' • Does not play simple interactive games such as pat-a-cake by the age of 12 months.\n\n'
            ' • By 12 months of age, he or she uses little or no gestures (for example, does not wave goodbye)\n\n'
            ' • By 15 months of age, does not share interests with others (for example, shows you an object that they like)\n\n'
            ' • By the age of 18 months, there is no purpose in showing you something intriguing.\n\n'
            ' • By the age of 24 months, does not notice when others are injured or unhappy.\n\n'
            ' • By 36 months of age, he has not noticed other children and has not joined them in play.\n\n',
            textAlign: TextAlign.center,
          ).px32()
        ]).px12();
  }
}
