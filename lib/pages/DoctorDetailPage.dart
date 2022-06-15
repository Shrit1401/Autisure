// ignore_for_file: file_names, deprecated_member_use

import 'package:autisure/utilis/themes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/doctors.dart';

class DoctorDetailPage extends StatelessWidget {
  final DoctorInfo item;
  const DoctorDetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  Future<void> dialNumber(
      {required String phoneNumber, required BuildContext context}) async {
    final url = "tel:$phoneNumber";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: AutiTheme.white,
            content:
                "There's seems some issue with your mobile try restarting it"
                    .text
                    .color(AutiTheme.primary)
                    .center
                    .make()),
      );
    }

    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AutiTheme.primary,
      appBar: AppBar(
        title: "Dr. ${item.name}".text.make(),
        backgroundColor: AutiTheme.primary,
        elevation: 0,
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          dialNumber(phoneNumber: item.contactNo, context: context);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          primary: AutiTheme.white,
        ),
        child: "Call on ${item.contactNo}"
            .text
            .xl
            .bold
            .color(AutiTheme.primary)
            .make(),
        // color: AutiTheme.primary,
      ).pLTRB(10, 5, 10, 5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
                    tag: Key(item.name),
                    child: Image.network(
                      item.imageUrl,
                    ).centered())
                .pOnly(bottom: 10),
            Column(
              children: [
                "Dr. ${item.name}"
                    .text
                    .xl4
                    .color(AutiTheme.white)
                    .bold
                    .makeCentered(),
                item.desc.text.color(AutiTheme.white).center.make().px12(),
                "Location: ${item.location}"
                    .text
                    .bold
                    .lg
                    .center
                    .color(AutiTheme.white)
                    .make()
                    .pLTRB(12, 12, 12, 50),
              ],
            )
          ],
        ),
      ),
    );
  }
}
