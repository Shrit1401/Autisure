// ignore_for_file: public_mem  ber_api_docs, sort_constructors_first
// ignore_for_file: file_names
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:autisure/models/doctors.dart';

import '../utilis/themes.dart';
import '../widgets/common/Drawer/AutiDrawer.dart';

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

  final url = "https://api.jsonbin.io/b/62a820fc449a1f382107ff5f/2";

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
    return Scaffold(
        appBar: AppBar(
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
            title: 'Doctors'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Suggested Doctors".text.xl4.bold.color(AutiTheme.primary).make(),
              if (DoctorModel.doctorInfos.isNotEmpty)
                const DoctorList().expand()
              else
                Expanded(
                  child: CircularProgressIndicator(
                    color: AutiTheme.primary,
                  ).centered().py16(),
                )
            ],
          ),
        ));
  }
}

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: DoctorModel.doctorInfos.length,
      itemBuilder: (context, index) {
        final doctorInfo = DoctorModel.doctorInfos[index];
        return DoctorItemWidget(item: doctorInfo);
      },
    );
  }
}

class DoctorItemWidget extends StatelessWidget {
  final DoctorInfo item;
  const DoctorItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DoctorListImage(image: item.imageUrl),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Dr. ${item.name}".text.lg.color(AutiTheme.white).bold.make(),
              item.specialist.text.color(AutiTheme.creamColor).make(),
              10.heightBox,
              DoctorButtonBar(
                item: item,
              )
            ],
          ),
        )
      ],
    ))
        .color(AutiTheme.primary)
        .shadowSm
        .rounded
        .square(150)
        .make()
        .onTap(() {})
        .py16();
  }
}

class DoctorListImage extends StatelessWidget {
  final String image;
  const DoctorListImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(AutiTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}

// ignore: must_be_immutable
class DoctorButtonBar extends StatelessWidget {
  DoctorInfo item;
  DoctorButtonBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.arrow_right_circle_fill,
              color: AutiTheme.white,
            )),
        if (item.isAssured) const AssuredBadgeDoctor(),
      ],
    );
  }
}

class AssuredBadgeDoctor extends StatelessWidget {
  const AssuredBadgeDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  backgroundColor: AutiTheme.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 20,
                  child: SizedBox(
                      height: 150, //use height
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                "Atisure Assured Doctor"
                                    .text
                                    .xl2
                                    .bold
                                    .color(AutiTheme.white)
                                    .make(),
                                "Autisure Assure Doctors are the verified doctors wo are verfied by us give them a try they one of the best doctors"
                                    .text
                                    .color(AutiTheme.white)
                                    .center
                                    .make(),
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: AutiTheme.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child:
                                    "OK".text.color(AutiTheme.primary).make())
                          ])).p16());
            });
      },
      icon: Icon(
        Iconsax.award5,
        color: AutiTheme.white,
        semanticLabel: "Autisure Assured",
      ),
    );
  }
}
