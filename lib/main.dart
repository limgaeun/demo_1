import 'package:flutter/material.dart';
import 'package:frontend/community/binding/app_binding.dart';
import 'package:frontend/community/view/pages/user/login_page.dart';
import 'package:frontend/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:frontend/map/marker/marker_map_page.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      home: LoginPage(),
    );
  }
}
