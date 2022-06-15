// ignore_for_file: file_names

import 'package:autisure/utilis/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/doctors.dart';

class DoctorDetailPage extends StatelessWidget {
  final DoctorInfo item;
  const DoctorDetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AutiTheme.primary,
      appBar: AppBar(
        title: "Dr. ${item.name}".text.make(),
        backgroundColor: AutiTheme.primary,
        elevation: 0,
      ),
      body: Column(
        children: [
          Hero(
              tag: Key(item.name),
              child: Image.network(
                item.imageUrl,
              ).centered())
        ],
      ),
    );
  }
}
