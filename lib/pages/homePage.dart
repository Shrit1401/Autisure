// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/models/doctors.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/common/Drawer/AutiDrawer.dart';
import 'package:autisure/widgets/common/ExitPopup.dart';

import '../widgets/Home/DoctorSuggestionRow.dart';
import '../widgets/Home/HomeBtn.dart';
import '../widgets/Home/HomePageHeading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
    setState(() {});
  }

  void loadData() async {
    const url = "https://api.jsonbin.io/b/62a820fc449a1f382107ff5f/2";
    final response = await http.get(Uri.parse(url));
    final doctorJson = response.body;
    var doctorDecodedData = jsonDecode(doctorJson);
    var doctorInfo = doctorDecodedData["doctors"];
    DoctorModel.doctorInfos = List.from(doctorInfo)
        .map<DoctorInfo>((item) => DoctorInfo.fromMap(item))
        .toList();
    setState(() {});
  }
 

  

  @override
  Widget build(BuildContext context) {
    var containerChanged = 30.heightBox;
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: AutiTheme.primary,
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
            title: 'Autisure'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageHeading(),
              .20.heightBox,
              const FunFactBtn(),
              containerChanged,
              const AutismTestButton(),
              containerChanged,
              const DoctorSuggestionHead(),
              .20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Container(
                    child: DoctorModel.doctorInfos.isNotEmpty
                        ? const DoctorSuggestionRow()
                        : CircularProgressIndicator(color: AutiTheme.primary)
                            .centered()
                            .expand(),
                  )
              ),

              
              
            ],
          ).p16(),
        ),
      ),
    );
  }
}
