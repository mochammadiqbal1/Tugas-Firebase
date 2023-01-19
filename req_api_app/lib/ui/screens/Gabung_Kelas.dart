import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

import 'buat_kelas.dart';

class GabungClass extends StatelessWidget {
  const GabungClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gabung kelas',
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        height: 35,
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('More'))
                        //  ListTile(
                        //   title: Center(
                        //     child: Text(
                        //       "More",
                        //       style: TextStyle(color: Colors.black, fontSize: 15),
                        //     ),
                        //   ),
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: ((context) {
                        //           return NextPage();
                        //         }),
                        //       ),
                        //     );
                        //   },
                        // ),
                        ),
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
              SizedBox(
                height: 24,
              ),
              Text(
                "Saat ini anda login sebagai",
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 24,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(360),
                child: Image.asset(
                  "assets/images/user.png",
                  width: 32,
                  height: 32,
                ),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mochammad Iqbal Rizqulloh",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "poin15nd@gmail.com",
                    style: TextStyle(
                      color: AppColor.grey,
                      fontSize: 12,
                    ),
                  ),
                  Divider(
                    color: AppColor.black,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mintalah kode kelas kepada pengajar, lalu masukan ",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "kode di sini.",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mata Pelajaran",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Untuk login menggunakan kode kelas",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "* Gunakan akun yang diizinkan",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "*Gunakan kode kelas, dengan 6 sampai 7 huruf dan",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "angka, tanpa spasi atau tombol",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Jika anda mengalami masalah saat bergabung",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "dengan kelas, buka artikel pusat bantuan",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
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
