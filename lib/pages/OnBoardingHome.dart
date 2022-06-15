// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utilis/routes.dart';
import '../utilis/themes.dart';

class OnBoardingHome extends StatelessWidget {
  const OnBoardingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: "Autisure".text.color(AutiTheme.white).make(),
            centerTitle: true,
            elevation: 0,
            backgroundColor: AutiTheme.primary,
            leading: const BackButton()),
        backgroundColor: AutiTheme.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "What do You Want to do?"
                .text
                .bold
                .color(AutiTheme.white)
                .xl4
                .center
                .make()
                .pOnly(bottom: 50),
            Image.asset(
              "assets/OnBoard/doc_med.png",
              height: 250,
              width: 250,
            ),
            50.heightBox,
            SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: AutiTheme.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: "Go Check if my kid is autistic"
                      .text
                      .bold
                      .color(AutiTheme.primary)
                      .xl2
                      .make()),
            ),
            20.heightBox,
            SizedBox(
              height: 50,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, AutiRoutes.homeRoute);
                  },
                  style: OutlinedButton.styleFrom(
                      primary: AutiTheme.white,
                      elevation: 0,
                      side: BorderSide(width: 2.0, color: AutiTheme.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: "Explore More"
                      .text
                      .color(AutiTheme.white)
                      .xl
                      .textStyle(const TextStyle(fontWeight: FontWeight.w600))
                      .make()),
            )
          ],
        ).centered().p16());
  }
}
