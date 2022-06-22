// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/Test/TestInstructions.dart';
import '../../widgets/common/Drawer/AutiDrawer.dart';
import '../../widgets/common/ExitPopup.dart';

class AutismTest extends StatelessWidget {
  const AutismTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
          backgroundColor: context.backgroundColor,
          appBar: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
              centerTitle: true,
              backgroundColor: context.primaryColor,
              elevation: 0,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Image.asset(
                    'assets/icons/menu.png',
                    height: 20,
                    color: AutiTheme.white,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              title: 'Autism Test'.text.xl3.bold.make()),
          drawer: const AutiDrawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TestInstructions(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, AutiRoutes.testPageRoute);
                },
                style: ElevatedButton.styleFrom(
                    primary: context.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: "Start Test".text.make(),
              ).p16().wFull(context).h10(context)
            ],
          ).p16()),
    );
  }
}
