// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
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
            const AutiDrawerListTile(
              title: "Autism Test",
              icon: Iconsax.clipboard_import5,
              routeName: "",
            ),
            Divider(
              color: AutiTheme.white.withAlpha(120),
            ),
            const AutiDrawerListTile(
                title: "Games",
                icon: CupertinoIcons.gamecontroller_alt_fill,
                routeName: ""),
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
            const AutiDrawerListTile(
                title: "Autism Market",
                icon: CupertinoIcons.bag_fill,
                routeName: ""),
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

class AutiDrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String routeName;
  const AutiDrawerListTile(
      {Key? key,
      required this.title,
      required this.icon,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isNewRouteSameAsCurrent = false;
    return ListTile(
      title: title.text.semiBold.color(AutiTheme.white).make(),
      leading: Icon(
        icon,
        color: AutiTheme.white,
      ).pOnly(left: 10),
      onTap: () {
        Navigator.popUntil(context, (route) {
          if (route.settings.name == routeName) {
            isNewRouteSameAsCurrent = true;
          }
          Scaffold.of(context).closeDrawer();
          return true;
        });

        if (!isNewRouteSameAsCurrent) {
          Navigator.pushNamed(context, routeName);
        }
      },
    );
  }
}
