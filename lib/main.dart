import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mall/data/user_cache.dart';

// import 'package:mall/home_sreen/view.dart';
import 'package:mall/login/view.dart';
import 'package:mall/model/user_response/user_response.dart';
import 'package:mall/route/app_route.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserResponseImplAdapter());
  await Hive.openBox('userBox');
  Get.put(UserCache());
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
