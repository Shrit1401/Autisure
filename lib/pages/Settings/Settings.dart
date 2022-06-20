// ignore_for_file: file_names, import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/common/Drawer/AutiDrawer.dart';
import '../../widgets/common/ExitPopup.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  static const keyDarkMode = 'key-dark-mode';
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
            title: 'Settings'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: ListView(children: [
          SettingsGroup(title: "General", children: [
            SwitchSettingsTile(
              settingKey: keyDarkMode,
              title: "Dark Mode",
              subtitle: '',
              leading: const Icon(Iconsax.moon),
            ),
            SimpleSettingsTile(
              title: "Language",
              subtitle: '',
              leading: const Icon(CupertinoIcons.textformat_abc),
            ),
          ])
        ]).p24(),
      ),
    );
  }
}
