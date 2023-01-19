// import 'package:/ui/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:req_api_app/Login.dart';
// import 'package:tugas_clone/http_networking.dart';
// import 'package:req_api_app/ui/theme/app_color.dart';
// import 'package:req_api_app/ui/theme/views/home_views.dart';
// ignore: unused_import
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'http_networking.dart/main_page.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}
