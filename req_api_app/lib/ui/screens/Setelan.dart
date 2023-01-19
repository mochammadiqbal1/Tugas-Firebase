import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

import 'buat_kelas.dart';

class Setelan extends StatelessWidget {
  const Setelan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Setelan',
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables

            children: [
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Setelan akun",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text("Perbarui doto, sandi, bahasa, dan lainnya"),
                  ],
                ),
                onTap: () {},
              ),
              Divider(color: AppColor.black),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Ganti nama",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(color: AppColor.black),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Notifikasi",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Pilih notifikasi yang ingin Anda terima di perangkat ini",
                      style: TextStyle(color: AppColor.black),
                    ),
                    Text(
                      "dan melalui email",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(color: AppColor.black),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sinkronkan melalui data seluler",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                onTap: () {},
              ),
              Divider(color: AppColor.black),
            ],
          ),
        ),
      ),
    );
  }
}

// const SizedBox(height: 24),
// Padding(
//   padding: const EdgeInsets.all(12),
//   child: TextField(
//     decoration: InputDecoration(
//       border: OutlineInputBorder(),
//       labelText: "Nama Kelass (wajib)",
//     ),
//   ),
// ),
