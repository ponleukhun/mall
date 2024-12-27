import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mall/route/home_sreen/binding.dart';
import 'package:mall/route/home_sreen/view.dart';

class AppRoute {
  static const HOME = "/home_screen";
  static final pages = [
    GetPage(
      name: HOME,
      page: () => HomeSreenPage(),
      binding: HomeSreenBinding(),
    ),
  ];
}
