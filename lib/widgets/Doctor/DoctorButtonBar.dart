// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/doctors.dart';
import '../../pages/Doctor/DoctorDetailPage.dart';
import '../../utilis/themes.dart';

class DoctorButtonBar extends StatelessWidget {
  DoctorInfo item;
  DoctorButtonBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DoctorDetailPage(item: item))),
            icon: Icon(
              CupertinoIcons.arrow_right_circle_fill,
              color: AutiTheme.white,
            )),
        if (item.isAssured) const AssuredBadgeDoctor(),
      ],
    );
  }
}

class AssuredBadgeDoctor extends StatelessWidget {
  const AssuredBadgeDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  backgroundColor: context.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 20,
                  child: SizedBox(
                      height: 150, //use height
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                "Atisure Assured Doctor"
                                    .text
                                    .xl2
                                    .bold
                                    .color(AutiTheme.white)
                                    .make(),
                                "Auti-Assure Assure Doctors are the verified doctors wo are verfied by us give them a try they one of the best doctors"
                                    .text
                                    .color(AutiTheme.white)
                                    .center
                                    .make(),
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: AutiTheme.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child:
                                    "OK"
                                    .text
                                    .color(context.primaryColor)
                                    .make())
                          ])).p16());
            });
      },
      icon: Icon(
        Iconsax.award5,
        color: AutiTheme.white,
        semanticLabel: "Autisure Assured",
      ),
    );
  }
}
