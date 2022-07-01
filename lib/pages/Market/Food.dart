// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/models/food.dart';

import '../../widgets/Market/FoodList.dart';
import '../../widgets/common/DoctorShimmerWidget.dart';
import '../../widgets/common/ExitPopup.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  final url = "https://api.npoint.io/81353ca19ae94ab5b45e";

  void loadData() async {
    //local file
    // var doctorJson = await rootBundle.loadString("assets/Data/Food.json");
    final response = await http.get(Uri.parse(url));
    final doctorJson = response.body;
    var doctorDecodedData = jsonDecode(doctorJson);
    var doctorInfo = doctorDecodedData["Food"];
    FoodModel.foodInfos = List.from(doctorInfo)
        .map<FoodInfo>((item) => FoodInfo.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: Scaffold(
            body: Container(
          padding: Vx.m16,
          child: Column(
            children: [
              "Food".text.xl4.bold.color(context.primaryColor).makeCentered(),
              FoodModel.foodInfos.isNotEmpty
                  ? const FoodList()
                  : ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return buildDoctorShimmer();
                      },
                    ).expand(),
            ],
          ),
        )));
  }
}

Widget buildDoctorShimmer() => const ListTile(
      title: ShimmerWidget.circular(height: 150, width: 80),
    );
