// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../models/doctors.dart';
import '../../pages/Doctor/DoctorDetailPage.dart';
import 'DoctorItemWidget.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: DoctorModel.doctorInfos.length,
      itemBuilder: (context, index) {
        final doctorInfo = DoctorModel.doctorInfos[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                    child: DoctorDetailPage(item: doctorInfo))),
            child: DoctorItemWidget(item: doctorInfo));
            
      },
    );
  }
}
