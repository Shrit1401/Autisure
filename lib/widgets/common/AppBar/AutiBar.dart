// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utilis/themes.dart';

AppBar autiBar(BuildContext context) {
  return Vx.isWeb
      ? AppBar(
          centerTitle: true,
          backgroundColor: context.primaryColor,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                'assets/icons/menu.png',
                color: AutiTheme.white,
                height: 40,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: 'Autisure'.text.xl5.bold.make().py64())
      : AppBar(
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
          title: 'Autisure'.text.xl3.bold.make());
}
