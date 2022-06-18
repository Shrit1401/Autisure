// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: file_names

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/utilis/routes.dart';

import '../../utilis/themes.dart';
import '../../widgets/common/Drawer/AutiDrawer.dart';
import '../../widgets/common/ExitPopup.dart';

class TestResult extends StatelessWidget {
  int score;
  TestResult({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: AutiTheme.primary,
            elevation: 0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            leading: Builder(
              builder: (context) => IconButton(
                icon: Image.asset(
                  'assets/icons/menu.png',
                  color: AutiTheme.white,
                  height: 20,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            title: 'Result'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Result(
              score: score,
            ),
            .20.heightBox,
            ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: AutiTheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AutiRoutes.homeRoute);
                    },
                    child: "OK".text.xl4.make())
                .wFull(context)
                .h10(context)
                .px12(),
            TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AutiRoutes.doctorRoute);
                    },
                    style: TextButton.styleFrom(primary: AutiTheme.primary),
                    child: "Doctor Page".text.xl3.underline.make())
                .pOnly(bottom: 20)
          ],
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  int score;
  Result({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        "The Test Results are:"
            .text
            .xl5
            .center
            .color(AutiTheme.primary)
            .bold
            .makeCentered(),
        20.heightBox,
        "May be Your kid is autistic".text.xl3.underline.make(),
        40.heightBox,
        "Within are test we found that your kid is autistic to contact with a doctor before asumming anything"
            .text
            .center
            .lg
            .make()
            .px12(),
        10.heightBox,
        "Note: the Test result aren’t the final consult a doctor they may help"
            .text
            .lg
            .center
            .make()
            .px12()
      ],
    );
  }
}
