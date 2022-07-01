import 'package:autisure/pages/Doctor/DoctorPage.dart';
import 'package:autisure/pages/Market/Market.dart';
import 'package:autisure/pages/OnBoardingHome.dart';
import 'package:autisure/pages/OnBoardingStart.dart';
import 'package:autisure/pages/Symptoms/Symptoms.dart';
import 'package:autisure/pages/Test/Test.dart';
import 'package:autisure/pages/Test/TestPage.dart';
import 'package:autisure/pages/homePage.dart';
import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: AutiScrollBehaviour(),
        title: 'Autisure',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AutiTheme.lightThemeData(context),
        initialRoute: initScreen == 0 || initScreen == null
            ? AutiRoutes.onBoardingStartRoute
            : AutiRoutes.homeRoute,
        routes: {
          AutiRoutes.homeRoute: (context) => const HomePage(),
          AutiRoutes.onBoardingHomeRoute: (context) => const OnBoardingHome(),
          AutiRoutes.onBoardingStartRoute: (context) => const OnBoardingStart(),
          AutiRoutes.doctorRoute: (context) => const Doctor(),
          AutiRoutes.marketRoute: (context) => const Market(),
          AutiRoutes.testRoute: (context) => const AutismTest(),
          AutiRoutes.testPageRoute: (context) => const TestPage(),
          AutiRoutes.symptomsRoutes: (context) => const Symptoms(),
        });
  }
}

class AutiScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}
