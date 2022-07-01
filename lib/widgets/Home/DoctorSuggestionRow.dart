// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/doctors.dart';
import '../../pages/Doctor/DoctorDetailPage.dart';
import 'DoctorSuggestionList.dart';

class DoctorSuggestionRow extends StatelessWidget {
  const DoctorSuggestionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rand1 = Random().nextInt(DoctorModel.doctorInfos.length);
    var rand2 = Random().nextInt(DoctorModel.doctorInfos.length);
    var rand3 = rand1 != rand2
        ? Random().nextInt(DoctorModel.doctorInfos.length)
        : rand2++;
    var rand4 = rand3 != rand1
        ? Random().nextInt(DoctorModel.doctorInfos.length)
        : rand2++;
    var rand5 = rand1 != rand2
        ? Random().nextInt(DoctorModel.doctorInfos.length)
        : rand2++;
    var rand6 = rand1 != rand2
        ? Random().nextInt(DoctorModel.doctorInfos.length)
        : rand2++;
    return Vx.isWeb
        ? Row(
            children: [
              doctorCard(context, rand1),
              doctorCard(context, rand2),
              doctorCard(context, rand3),
              doctorCard(context, rand4),
              doctorCard(context, rand5),
              doctorCard(context, rand6),
            ],
          )
        : Row(
            children: [
              doctorCard(context, rand1),
              doctorCard(context, rand2),
              doctorCard(context, rand3),
            ],
          );
  }
}

Widget doctorCard(BuildContext context, int randomNum) {
  void doctorDetail(context, DoctorInfo doctorInfo) {
    Vx.isWeb
        ? Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                duration: const Duration(milliseconds: 300),
                child: DoctorDetailPage(item: doctorInfo)))
        : Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeftWithFade,
                duration: const Duration(milliseconds: 300),
                child: DoctorDetailPage(item: doctorInfo)));
  }

  return InkWell(
    onTap: () => doctorDetail(context, DoctorModel.doctorInfos[randomNum]),
    child: DoctorSuggestionList(
      item: DoctorModel.doctorInfos[randomNum],
    ).pOnly(right: 24),
  );
}
