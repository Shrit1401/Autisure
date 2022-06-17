// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../models/food.dart';
import 'FoodItemList.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: FoodModel.foodInfos.length,
      itemBuilder: (context, index) {
        final toysInfo = FoodModel.foodInfos[index];
        return FoodItemList(
          item: toysInfo,
        );
      },
    ));
  }
}
