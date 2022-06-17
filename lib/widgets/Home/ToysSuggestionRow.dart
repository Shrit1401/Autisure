// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:autisure/models/toys.dart';
import 'package:autisure/widgets/Home/ToysSuggestionList.dart';

class ToysSuggestionRow extends StatelessWidget {
  const ToysSuggestionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rand1 = Random().nextInt(ToysModel.toysInfos.length);
    var rand2 = Random().nextInt(ToysModel.toysInfos.length);
    var rand3 =
        rand1 != rand2 ? Random().nextInt(ToysModel.toysInfos.length) : rand2++;
    return Row(
      children: [
        ToysSuggestionList(
          // genrate random number
          item: ToysModel.toysInfos[rand1],
        ).pOnly(right: 24),
        ToysSuggestionList(
          item: ToysModel.toysInfos[rand2],
        ).pOnly(right: 24),
        ToysSuggestionList(
          item: ToysModel.toysInfos[rand3],
        ).pOnly(right: 24),
      ],
    );
  }
}
