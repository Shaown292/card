import 'package:get/get.dart';

import '../modules/app_body/bindings/app_body_binding.dart';
import '../modules/app_body/views/app_body_view.dart';
import '../modules/bottom_nav/bindings/bottom_nav_binding.dart';
import '../modules/bottom_nav/views/bottom_nav_view.dart';
import '../modules/dynamic_list_view/bindings/dynamic_list_view_binding.dart';
import '../modules/dynamic_list_view/views/dynamic_list_view_view.dart';
import '../modules/expanded/bindings/expanded_binding.dart';
import '../modules/expanded/views/expanded_view.dart';
import '../modules/getx_overview/bindings/getx_overview_binding.dart';
import '../modules/getx_overview/views/getx_overview_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/media_query/bindings/media_query_binding.dart';
import '../modules/media_query/views/media_query_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MEDIA_QUERY;

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
    GetPage(
      name: _Paths.EXPANDED,
      page: () => const ExpandedView(),
      binding: ExpandedBinding(),
    ),
    GetPage(
      name: _Paths.GETX_OVERVIEW,
      page: () => const GetxOverviewView(),
      binding: GetxOverviewBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_QUERY,
      page: () => const MediaQueryView(),
      binding: MediaQueryBinding(),
    ),
  ];
}
