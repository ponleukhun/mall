import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:mall/home_sreen/view.dart';
import 'package:mall/login/view.dart';
import 'package:mall/route/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
      initialRoute: AppRoute.LOGIN,
      getPages: AppRoute.pages,
    );
  }
}
