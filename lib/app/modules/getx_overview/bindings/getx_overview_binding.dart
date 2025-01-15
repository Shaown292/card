import 'package:get/get.dart';

import '../controllers/getx_overview_controller.dart';

class GetxOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetxOverviewController>(
      () => GetxOverviewController(),
    );
  }
}
