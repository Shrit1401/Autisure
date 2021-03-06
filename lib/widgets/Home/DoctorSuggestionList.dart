// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/doctors.dart';
import '../../utilis/themes.dart';

// ignore: must_be_immutable
class DoctorSuggestionList extends StatelessWidget {
  DoctorInfo item;
  DoctorSuggestionList({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.primaryColor,
      height: 250,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: Key(item.name),
            child: Image.network(
              item.imageUrl,
              width: 80,
              height: 80,
            ).cornerRadius(12).p0(),
          ),
          Column(
            children: [
              "Dr. ${item.name}"
                  .text
                  .xl
                  .center
                  .color(AutiTheme.white)
                  .bold
                  .make(),
              5.heightBox,
              item.specialist.text.medium.color(AutiTheme.white).bold.make(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_right_circle_fill,
                    color: AutiTheme.white,
                  ))
            ],
          )
        ],
      ).p16(),
    ).cornerRadius(16);
  }
}
