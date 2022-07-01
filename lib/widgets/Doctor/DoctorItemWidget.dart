// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/doctors.dart';
import '../../utilis/themes.dart';
import 'DoctorButtonBar.dart';
import '../common/ListImage.dart';

class DoctorItemWidget extends StatelessWidget {
  final DoctorInfo item;
  const DoctorItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Vx.isWeb
        ? DocorItemCard()
            .color(context.primaryColor)
            .shadowSm
            .rounded
            .square(100)
            .make()
            .p32()
        // .py16()
        : DocorItemCard()
            .color(context.primaryColor)
            .shadowSm
            .rounded
            .square(150)
            .make()
            .py16();
  }

  // ignore: non_constant_identifier_names
  VxBox DocorItemCard() {
    return VxBox(
        child: Vx.isWeb
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                      tag: Key(item.name),
                      child: ListImage(image: item.imageUrl)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Dr. ${item.name}"
                            .text
                            .lg
                            .color(AutiTheme.white)
                            .bold
                            .make(),
                        item.specialist.text.color(AutiTheme.creamColor).make(),
                        10.heightBox,
                        DoctorButtonBar(
                          item: item,
                        )
                      ],
                    ),
                  ).p16()
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                      tag: Key(item.name),
                      child: ListImage(image: item.imageUrl)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "Dr. ${item.name}"
                            .text
                            .lg
                            .color(AutiTheme.white)
                            .bold
                            .make(),
                        item.specialist.text.color(AutiTheme.creamColor).make(),
                        10.heightBox,
                        DoctorButtonBar(
                          item: item,
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
