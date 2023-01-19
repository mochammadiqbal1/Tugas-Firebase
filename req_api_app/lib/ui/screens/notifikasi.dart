import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/theme/app_color.dart';
import 'package:req_api_app/main.dart';

import '../widgets/app_icon.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.red,
          title: Align(
            child: Container(
              width: 2,
              padding: EdgeInsets.all(12),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Google Classroom',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    AppIconButton(
                      icon: Stack(
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: AppColor.black,
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ]),
            ),
          )),
    );
  }
}
