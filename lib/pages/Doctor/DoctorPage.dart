// ignore_for_file: public_mem  ber_api_docs, sort_constructors_first
// ignore_for_file: file_names
import 'dart:convert';

import 'package:autisure/widgets/common/ContactDeveloper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/models/doctors.dart';

import '../../utilis/themes.dart';
import '../../widgets/Doctor/DoctorList.dart';
import '../../widgets/common/DoctorShimmerWidget.dart';
import '../../widgets/common/Drawer/AutiDrawer.dart';
import '../../widgets/common/ExitPopup.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  final url = "https://api.npoint.io/6d627dcefa5714264a2a";

  void loadData() async {
    //local file
    // var doctorJson = await rootBundle.loadString("assets/Data/Doctors.json");
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
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
          appBar: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
              centerTitle: true,
              backgroundColor: context.primaryColor,
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
              title: 'Doctors'.text.xl3.bold.make()),
          drawer: const AutiDrawer(),
          body: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Suggested Doctors"
                    .text
                    .xl4
                    .bold
                    .color(context.primaryColor)
                    .make(),
                DoctorModel.doctorInfos.isNotEmpty
                    ? const Expanded(child: DoctorList())
                    : ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return buildDoctorShimmer();
                        },
                      ).expand(),
                const ContactDev()
              ],
            ),
          )),
    );
  }
}

Widget buildDoctorShimmer() => const ListTile(
      title: ShimmerWidget.circular(height: 150, width: 80),
    );
