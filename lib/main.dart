import 'package:autisure/pages/Doctor/DoctorPage.dart';
import 'package:autisure/pages/Market/Market.dart';
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
        initialRoute: AutiRoutes.marketRoute,
        routes: {
          AutiRoutes.homeRoute: (context) => const HomePage(),
          AutiRoutes.onBoardingHomeRoute: (context) => const OnBoardingHome(),
          AutiRoutes.onBoardingStartRoute: (context) => const OnBoardingStart(),
          AutiRoutes.doctorRoute: (context) => const Doctor(),
          AutiRoutes.marketRoute: (context) => const Market(),
        });
  }
}
