// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/utilis/routes.dart';

import '../../utilis/themes.dart';
import '../../widgets/Test/Result.dart';
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
            backgroundColor: context.primaryColor,
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
                        primary: context.primaryColor,
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
                    style: TextButton.styleFrom(primary: context.primaryColor),
                    child: "Doctor Page".text.xl3.underline.make())
                .pOnly(bottom: 20)
          ],
        ),
      ),
    );
  }
}
