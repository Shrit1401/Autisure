// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class ContactDev extends StatelessWidget {
  const ContactDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> dialNumber({required BuildContext context}) async {
      const url = "tel:9667271155";
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: context.primaryColor,
              content:
                  "There's seems some issue with your mobile try restarting it"
                      .text
                      .color(context.primaryColor)
                      .center
                      .make()),
        );
      }
    }

    return Center(
      child: TextButton(
              onPressed: () {
                dialNumber(context: context);
              },
              style: TextButton.styleFrom(primary: AutiTheme.primary),
              child: "Contact developer for any query".text.make())
          .p0(),
    );
  }
}
