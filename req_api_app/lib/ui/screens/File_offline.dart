import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/screens/calendar.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

import 'notifikasi.dart';

class Offline extends StatelessWidget {
  const Offline({super.key});

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
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
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
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
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
              onTap: () {},
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
              onTap: () {},
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    ));
  }
}
