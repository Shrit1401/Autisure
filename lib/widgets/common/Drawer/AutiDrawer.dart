// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/common/Drawer/ListTileDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class AutiDrawer extends StatelessWidget {
  const AutiDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Drawer(
        backgroundColor: AutiTheme.primary,
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
                decoration: BoxDecoration(color: AutiTheme.primary),
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
            ListTile(
              title: "Games".text.semiBold.color(AutiTheme.white).make(),
              leading: Icon(
                CupertinoIcons.gamecontroller_fill,
                color: AutiTheme.white,
              ).pOnly(left: 10),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    action: SnackBarAction(
                      label: 'Close',
                      onPressed: () {
                        // Code to execute.
                      },
                    ),
                    backgroundColor: AutiTheme.primary,
                    content: "Games tab Coming Soon"
                        .text
                        .center
                        .color(AutiTheme.white)
                        .make(),
                    width: 280.0, // Width of the SnackBar.
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, // Inner padding for SnackBar content.
                    ),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                );
              },
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
                title: "Autism Market",
                icon: CupertinoIcons.bag_fill,
                routeName: AutiRoutes.marketRoute),
            Divider(
              color: AutiTheme.white.withAlpha(120),
            ),
            const AutiDrawerListTile(
                title: "Facts", icon: Iconsax.info_circle5, routeName: ""),
            Divider(
              color: AutiTheme.white.withAlpha(120),
            ),
            const AutiDrawerListTile(
                title: "Settings", icon: Icons.settings, routeName: ""),
            Divider(
              color: AutiTheme.white.withAlpha(120),
            ),
          ],
        ),
      ),
    );
  }
}
