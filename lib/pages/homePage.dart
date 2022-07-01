// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use, curly_braces_in_flow_control_structures
// ignore_for_file: file_names
import 'package:autisure/models/food.dart';
import 'package:autisure/widgets/Home/FoodSuggestionRow.dart';
import 'package:autisure/widgets/Home/ToysSuggestionRow.dart';
import 'package:autisure/widgets/common/BottomBar/AutiBottomBar.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/models/doctors.dart';
import 'package:autisure/widgets/common/Drawer/AutiDrawer.dart';
import 'package:autisure/widgets/common/ExitPopup.dart';

import '../models/toys.dart';
import '../widgets/Home/DoctorSuggestionRow.dart';
import '../widgets/Home/HomeBtn.dart';
import '../widgets/Home/HomePageHeading.dart';
import '../widgets/common/AppBar/AutiBar.dart';
import '../widgets/common/DoctorShimmerWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    toysLoadData();
    loadDoctorData();
    foodLoadData();
    setState(() {});
  }

  void loadDoctorData() async {
    const url = "https://api.npoint.io/6d627dcefa5714264a2a";
    final response = await http.get(Uri.parse(url));
    final doctorJson = response.body;
    var doctorDecodedData = jsonDecode(doctorJson);
    var doctorInfo = doctorDecodedData["doctors"];
    DoctorModel.doctorInfos = List.from(doctorInfo)
        .map<DoctorInfo>((item) => DoctorInfo.fromMap(item))
        .toList();
    setState(() {});
  }

  void toysLoadData() async {
    const url = "https://api.npoint.io/5cd561d0676b21a83e94";
    final response = await http.get(Uri.parse(url));
    final toysJson = response.body;
    var toysDecodedData = jsonDecode(toysJson);
    var toysInfo = toysDecodedData["toys"];
    ToysModel.toysInfos = List.from(toysInfo)
        .map<ToysInfo>((item) => ToysInfo.fromMap(item))
        .toList();
  }

  void foodLoadData() async {
    //local file
    // var doctorJson = await rootBundle.loadString("assets/Data/Food.json");
    const url = "https://api.npoint.io/81353ca19ae94ab5b45e";
    final response = await http.get(Uri.parse(url));
    final foodJson = response.body;
    var foodDecodedData = jsonDecode(foodJson);
    var doctorInfo = foodDecodedData["Food"];
    FoodModel.foodInfos = List.from(doctorInfo)
        .map<FoodInfo>((item) => FoodInfo.fromMap(item))
        .toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    var containerChanged = 30.heightBox;
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        backgroundColor: context.backgroundColor,
        appBar: autiBar(context),
        drawer: const AutiDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageHeading(),
              20.heightBox,
              const AutismTestButton(),
              containerChanged,
              const DoctorSuggestionHead(),
              20.heightBox,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: DoctorModel.doctorInfos.isNotEmpty
                        ? const DoctorSuggestionRow()
                        : CircularProgressIndicator(color: context.primaryColor)
                              .centered()
                  )),

              containerChanged,
              const ToysSuggestionHead(),
              20.heightBox,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: ToysModel.toysInfos.isNotEmpty
                        ? const ToysSuggestionRow()
                        : CircularProgressIndicator(color: context.primaryColor)
                            .centered()
                            .expand(),
                  )),

              containerChanged,
              const FoodSuggestionHead(),
              20.heightBox,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: FoodModel.foodInfos.isNotEmpty
                        ? const FoodSuggestionRow()
                        : CircularProgressIndicator(color: context.primaryColor)
                            .centered()
                            .expand(),
                  )),

              const AutiBottomBar()
            ],
          ).p16(),
        ),
      ),
    );
  }
}
