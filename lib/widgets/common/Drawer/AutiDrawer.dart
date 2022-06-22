// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:autisure/widgets/common/Drawer/ListTileDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utilis/themes.dart';

class AutiDrawer extends StatelessWidget {
  const AutiDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Drawer(
          backgroundColor: context.primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: AutiTheme.white.withAlpha(80)))),
                child: UserAccountsDrawerHeader(
                  accountName: "Autisure".text.semiBold.xl5.make(),
                  decoration: BoxDecoration(color: context.primaryColor),
                  accountEmail: "Abilty in Disablity".text.medium.lg.make(),
                ),
              ),
              AutiDrawerListTile(
                title: "Home",
                icon: Iconsax.home5,
                routeName: AutiRoutes.homeRoute,
              ),
              Divider(
                color: AutiTheme.white.withAlpha(120),
              ),
              AutiDrawerListTile(
                title: "Autism Test",
                icon: Iconsax.clipboard_import5,
                routeName: AutiRoutes.testRoute,
              ),
              Divider(
                color: AutiTheme.white.withAlpha(120),
              ),
              AutiDrawerListTile(
                  title: "Doctors",
                  icon: CupertinoIcons.doc_person_fill,
                  routeName: AutiRoutes.doctorRoute),
              Divider(
                color: AutiTheme.white.withAlpha(120),
              ),
              AutiDrawerListTile(
                  title: "Toys & Food",
                  icon: CupertinoIcons.bag_fill,
                  routeName: AutiRoutes.marketRoute),
              Divider(
                color: AutiTheme.white.withAlpha(120),
              ),
              AutiDrawerListTile(
                  title: "Symptoms",
                  icon: CupertinoIcons.heart_circle_fill,
                  routeName: AutiRoutes.symptomsRoutes),
              Divider(
                color: AutiTheme.white.withAlpha(120),
              ),
              100.heightBox,
              Align(
                alignment: Alignment.bottomCenter,
                child: "Autisure: Beta 0.1"
                    .text
                    .textStyle(context.captionStyle)
                    .color(AutiTheme.grey)
                    .make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
