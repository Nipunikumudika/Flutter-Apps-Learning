import 'package:get/get.dart';

import '../controllers/testController2.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TestController2());
  }
}
