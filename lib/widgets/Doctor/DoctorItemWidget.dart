// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/doctors.dart';
import '../../utilis/themes.dart';
import 'DoctorButtonBar.dart';
import 'DoctorListImage.dart';

class DoctorItemWidget extends StatelessWidget {
  final DoctorInfo item;
  const DoctorItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DoctorListImage(image: item.imageUrl),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Dr. ${item.name}".text.lg.color(AutiTheme.white).bold.make(),
              item.specialist.text.color(AutiTheme.creamColor).make(),
              10.heightBox,
              DoctorButtonBar(
                item: item,
              )
            ],
          ),
        )
      ],
    ))
        .color(AutiTheme.primary)
        .shadowSm
        .rounded
        .square(150)
        .make()
        .onTap(() {})
        .py16();
  }
}
