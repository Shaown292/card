import 'package:get/get.dart';

import '../controllers/dynamic_list_view_controller.dart';

class DynamicListViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DynamicListViewController>(
      () => DynamicListViewController(),
    );
  }
}
