// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../models/doctors.dart';
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
        return DoctorItemWidget(item: doctorInfo);
      },
    );
  }
}
