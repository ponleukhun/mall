import 'package:get/get.dart';

import 'logic.dart';

class HomeSreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSreenLogic());
  }
}
