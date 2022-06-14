// ignore_for_file: file_names
import 'package:autisure/models/doctors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:convert';
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

  void loadData() async {
    var doctorJson = await rootBundle.loadString("assets/Data/Doctors.json");
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
                CircularProgressIndicator(
                  color: AutiTheme.primary,
                ).centered()
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
            ButtonBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.award5,
                    color: AutiTheme.white,
                    semanticLabel: "Autisure Assured",
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.arrow_right_circle_fill,
                      color: AutiTheme.white,
                    ))
              ],
            )
          ],
        ))
      ],
    ))
        .color(AutiTheme.primary)
        .shadow2xl
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
        .shadowSm
        .p8
        .color(AutiTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
