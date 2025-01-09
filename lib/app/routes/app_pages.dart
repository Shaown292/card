import 'package:get/get.dart';

import '../modules/app_body/bindings/app_body_binding.dart';
import '../modules/app_body/views/app_body_view.dart';
import '../modules/bottom_nav/bindings/bottom_nav_binding.dart';
import '../modules/bottom_nav/views/bottom_nav_view.dart';
import '../modules/dynamic_list_view/bindings/dynamic_list_view_binding.dart';
import '../modules/dynamic_list_view/views/dynamic_list_view_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DYNAMIC_LIST_VIEW;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV,
      page: () => const NavigationExample(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: _Paths.APP_BODY,
      page: () => const AppBodyView(),
      binding: AppBodyBinding(),
    ),
    GetPage(
      name: _Paths.DYNAMIC_LIST_VIEW,
      page: () => const DynamicListViewView(),
      binding: DynamicListViewBinding(),
    ),
  ];
}
