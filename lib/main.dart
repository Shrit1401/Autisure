import 'package:autisure/pages/DoctorPage.dart';
import 'package:autisure/pages/OnBoardingHome.dart';
import 'package:autisure/pages/OnBoardingStart.dart';
import 'package:autisure/pages/homePage.dart';
import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Autisure',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AutiTheme.lightThemeData(context),
        initialRoute: AutiRoutes.doctorRoute,
        routes: {
          AutiRoutes.homeRoute: (context) => const HomePage(),
          AutiRoutes.onBoardingHomeRoute: (context) => const OnBoardingHome(),
          AutiRoutes.onBoardingStartRoute: (context) => const OnBoardingStart(),
          AutiRoutes.doctorRoute: (context) => const Doctor(),
        });
  }
}
