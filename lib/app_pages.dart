import 'package:get/get.dart';

import 'app_routes.dart';
import 'pages/home_page/home_page.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homePage,
      page: () => const HomePage(),
    ),
  ];
}
