import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/controllers/global_controller.dart';
import 'package:piter_getx/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalControllers());
    return GetMaterialApp(
      title: 'Getx App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
    );
  }
}
