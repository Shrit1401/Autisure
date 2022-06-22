// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utilis/themes.dart';

class AutiBottomBar extends StatelessWidget {
  const AutiBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Divider(
            thickness: 2,
            color: context.canvasColor,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "An Innitaivte taken by Shrit Shritvastava"
                .text
                .xl2
                .bold
                .center
                .color(AutiTheme.logoBlack)
                .make(),
            5.heightBox,
            "aka Shrit1401".text.color(AutiTheme.logoBlack).make(),
            5.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      primary: AutiTheme.white,
                    ),
                    onPressed: () async {
                      const url =
                          "https://shrit1401.blogspot.com/2022/06/autisure-privacy-policy.html";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                    child: "Privacy Policy"
                        .text
                        .color(AutiTheme.logoBlack)
                        .make()),
                TextButton(
                    style: TextButton.styleFrom(
                      primary: AutiTheme.white,
                    ),
                    onPressed: () async {
                      const url = "https://shrit1401.codes/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw "Could not launch $url";
                      }
                    },
                    child: "Developer Website"
                        .text
                        .color(AutiTheme.logoBlack)
                        .make()),
              ],
            ),
            10.heightBox,
            "© 2020 Shrit Shritvastava, Icons and Images by icon 8"
                .text
                .sm
                .color(AutiTheme.logoBlack)
                .make(),
          ],
        )
            .wFull(context)
            .h32(context)
            .backgroundColor(AutiTheme.logoGreen)
            .cornerRadius(10),
      ],
    );
  }
}
