import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
  ];
}
