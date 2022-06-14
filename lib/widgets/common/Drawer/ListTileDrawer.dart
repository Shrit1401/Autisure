// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utilis/themes.dart';

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
          Navigator.pushReplacementNamed(context, routeName);
        }
      },
    );
  }
}
