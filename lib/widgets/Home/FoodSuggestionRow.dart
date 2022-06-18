// ignore_for_file: file_names

import 'dart:math';

import 'package:autisure/models/food.dart';
import 'package:autisure/widgets/Home/FoodSuggestionList.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FoodSuggestionRow extends StatelessWidget {
  const FoodSuggestionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rand1 = Random().nextInt(FoodModel.foodInfos.length);
    var rand2 = Random().nextInt(FoodModel.foodInfos.length);
    var rand3 =
        rand1 != rand2 ? Random().nextInt(FoodModel.foodInfos.length) : rand2++;
    return Row(
      children: [
        FoodSuggestionList(
          // genrate random number
          item: FoodModel.foodInfos[rand1],
        ).pOnly(right: 24),
        FoodSuggestionList(
          item: FoodModel.foodInfos[rand2],
        ).pOnly(right: 24),
        FoodSuggestionList(
          item: FoodModel.foodInfos[rand3],
        ).pOnly(right: 24),
      ],
    );
  }
}
