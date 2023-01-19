// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:req_api_app/data/home_data.dart';
import 'package:req_api_app/data/model/subject.dart';
import 'package:req_api_app/ui/screens/File_offline.dart';
import 'package:req_api_app/ui/screens/Gabung_Kelas.dart';
import 'package:req_api_app/ui/screens/Setelan.dart';
import 'package:req_api_app/ui/screens/buat_kelas.dart';
import 'package:req_api_app/ui/screens/calendar.dart';
import 'package:req_api_app/ui/screens/notifikasi.dart';
import 'package:req_api_app/ui/theme/app_color.dart';
import 'package:req_api_app/ui/widgets/app_assignment.dart';
import 'package:req_api_app/ui/widgets/app_icon.dart';
import 'package:req_api_app/ui/widgets/subject_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Text(
                'Google Classroom',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 24,
                ),
              ),
              Divider(
                color: AppColor.grey,
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Kelas'),
                leading: Icon(
                  Icons.home,
                  color: AppColor.black,
                ),
                onTap: () {},
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Kalender'),
                leading: Icon(
                  Icons.calendar_month,
                  color: AppColor.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Calendar();
                  })));
                },
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Notifikasi'),
                leading: Icon(
                  Icons.notifications,
                  color: AppColor.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Notifikasi();
                  })));
                },
              ),
              Divider(
                color: AppColor.black,
              ),
              SizedBox(
                child: Text(
                  "Anda terdaftar di mata pelajaran",
                  style: TextStyle(color: AppColor.grey),
                ),
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Daftar tugas'),
                leading: Icon(
                  Icons.note_add,
                  color: AppColor.black,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColor.black,
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('File Offline'),
                leading: Icon(
                  Icons.offline_pin,
                  color: AppColor.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Offline();
                  })));
                },
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Kelas yang di arsipkan'),
                leading: Icon(
                  Icons.archive_sharp,
                  color: AppColor.black,
                ),
                onTap: () {},
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Folder'),
                leading: Icon(
                  Icons.folder,
                  color: AppColor.black,
                ),
                onTap: () {},
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Setelan'),
                leading: Icon(
                  Icons.settings,
                  color: AppColor.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Setelan();
                  })));
                },
              ),
              ListTile(
                textColor: AppColor.black,
                title: Text('Bantuan'),
                leading: Icon(
                  Icons.help,
                  color: AppColor.black,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColor.black),
          backgroundColor: Colors.white,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Goggle Clasroom',
              style: TextStyle(color: AppColor.black),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(360),
                  child: Image.asset(
                    "assets/images/user.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                AppIconButton(
                  icon: Stack(
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: AppColor.black,
                      ),
                      Positioned(
                        right: 2,
                        top: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(
                                color: Theme.of(context).canvasColor, width: 1),
                            borderRadius: BorderRadius.circular(360),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBarModalBottomSheet(
              animationCurve: Curves.easeInOut,
              backgroundColor: Theme.of(context).canvasColor,
              bounce: true,
              enableDrag: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              context: context,
              builder: (context) => Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "buatkelas",
                          style: TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return NextPage();
                          })));
                        },
                      ),
                      ListTile(
                        title: Text(
                          "Gabung Ke Kelas",
                          style: TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return GabungClass();
                          })));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          splashColor: AppColor.black.withOpacity(0.25),
          // focusColor: AppColor.black.withOpacity(0.15),
          child: const Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              // const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(360),
                        splashColor:
                            Theme.of(context).primaryColor.withOpacity(0.25),
                        highlightColor:
                            Theme.of(context).primaryColor.withOpacity(0.4),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                  child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: subjects.length,
                itemBuilder: (ctx, index) {
                  final Subject = subjects[index];

                  //Subject item
                  return SubjectItem(subject: Subject);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
