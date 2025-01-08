import 'package:get/get.dart';

import '../controllers/app_body_controller.dart';

class AppBodyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppBodyController>(
      () => AppBodyController(),
    );
  }
}
