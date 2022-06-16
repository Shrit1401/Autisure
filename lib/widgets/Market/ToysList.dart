// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../models/toys.dart';
import 'ToysItemWidget.dart';

class ToysList extends StatelessWidget {
  const ToysList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: ToysModel.toysInfos.length,
      itemBuilder: (context, index) {
        final toysInfo = ToysModel.toysInfos[index];
        return ToysItemWidget(item: toysInfo);
      },
    ));
  }
}
