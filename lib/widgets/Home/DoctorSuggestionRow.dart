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

  void doctorDetail(context, DoctorInfo doctorInfo) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: const Duration(milliseconds: 300),
            child: DoctorDetailPage(item: doctorInfo)));
  }

  @override
  Widget build(BuildContext context) {
    var rand1 = Random().nextInt(DoctorModel.doctorInfos.length);
    var rand2 = Random().nextInt(DoctorModel.doctorInfos.length);
    var rand3 = rand1 != rand2
        ? Random().nextInt(DoctorModel.doctorInfos.length)
        : rand2++;
    return Row(
      children: [
        InkWell(
          onTap: () => doctorDetail(context, DoctorModel.doctorInfos[rand1]),
          child: DoctorSuggestionList(
            // genrate random number
            item: DoctorModel.doctorInfos[rand1],
          ).pOnly(right: 24),
        ),
        InkWell(
          onTap: () => doctorDetail(context, DoctorModel.doctorInfos[rand2]),
          child: DoctorSuggestionList(
            item: DoctorModel.doctorInfos[rand2],
          ).pOnly(right: 24),
        ),
        InkWell(
          onTap: () => doctorDetail(context, DoctorModel.doctorInfos[rand3]),
          child: DoctorSuggestionList(
            item: DoctorModel.doctorInfos[rand3],
          ).pOnly(right: 24),
        ),
      ],
    );
  }
}
