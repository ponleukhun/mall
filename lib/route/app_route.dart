import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mall/home_sreen/binding.dart';
import 'package:mall/home_sreen/view.dart';
import 'package:mall/login/binding.dart';
import 'package:mall/login/view.dart';
import 'package:mall/mall_list/binding.dart';
import 'package:mall/mall_list/view.dart';

class AppRoute {
  static const HOME = "/home_screen";
  static const LOGIN = "/login";
  static const MALL = "/mall_list";
  static final pages = [
    GetPage(
      name: HOME,
      page: () => HomeSreenPage(),
      binding: HomeSreenBinding(),
    ),
    GetPage(name: LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: MALL, page: () => MallListPage(), binding: MallListBinding()),
  ];
}
