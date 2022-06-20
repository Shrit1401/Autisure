// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/Symptoms/MoreSyptoms.dart';
import '../../widgets/Symptoms/SocialCharacterstics.dart';
import '../../widgets/Symptoms/SymIntro.dart';
import '../../widgets/Symptoms/Therapist.dart';
import '../../widgets/Symptoms/Treatment.dart';
import '../../widgets/common/Drawer/AutiDrawer.dart';
import '../../widgets/common/ExitPopup.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            )),
            centerTitle: true,
            backgroundColor: AutiTheme.primary,
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
            title: 'Symptoms'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              10.heightBox,
              "Autism Spectrum Disorder"
                  .text
                  .xl4
                  .center
                  .color(AutiTheme.primary)
                  .make(),
              30.heightBox,
              const SymIntro(),
              30.heightBox,
              const SocialCharacterstics(),
              30.heightBox,
              const MoreSyptoms(),
              30.heightBox,
              const Treatment(),
              30.heightBox,
              const Therapist(),
              10.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
