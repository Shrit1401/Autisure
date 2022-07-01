// ignore_for_file: file_names

import 'dart:convert';

import 'package:autisure/models/toys.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/Market/ToysList.dart';
import '../../widgets/common/DoctorShimmerWidget.dart';
import '../../widgets/common/ExitPopup.dart';

class Toys extends StatefulWidget {
  const Toys({Key? key}) : super(key: key);

  @override
  State<Toys> createState() => _ToysState();
}

const url = "https://api.npoint.io/5cd561d0676b21a83e94";

class _ToysState extends State<Toys> {
  @override
  void initState() {
    super.initState();
    toysLoadData();
  }

  void toysLoadData() async {
    final response = await http.get(Uri.parse(url));
    final toysJson = response.body;
    var toysDecodedData = jsonDecode(toysJson);
    var toysInfo = toysDecodedData["toys"];
    ToysModel.toysInfos = List.from(toysInfo)
        .map<ToysInfo>((item) => ToysInfo.fromMap(item))
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
              "Toys".text.xl4.bold.color(context.primaryColor).makeCentered(),
              ToysModel.toysInfos.isNotEmpty
                  ? const ToysList()
                  : ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return buildDoctorShimmer();
                      },
                    ).expand(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDoctorShimmer() => const ListTile(
      title: ShimmerWidget.circular(height: 150, width: 80),
    );
