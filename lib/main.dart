import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mall/route/app_route.dart';
import 'package:mall/route/home_sreen/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeSreenPage(),
      initialRoute: AppRoute.HOME,
      getPages: AppRoute.pages,
    );
  }
}
