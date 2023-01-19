// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // To listen to the changes in the textfield.

    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Buat Kelas',
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: ListTile(
                        title: Text(
                          "More",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return NextPage();
                              }),
                            ),
                          );
                        },
                      ),
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama Kelass (wajib)",
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Bagian",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Ruang",
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
