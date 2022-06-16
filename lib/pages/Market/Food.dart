// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/common/ExitPopup.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: Scaffold(
            body: Container(
          padding: Vx.m16,
          child: Column(
            children: [
              "Food".text.xl4.bold.color(AutiTheme.primary).makeCentered(),
            ],
          ),
        )));
  }
}
