import 'package:get/get.dart';

import 'app.routes.dart';
import 'pages/home_page/home_page.dart';

abstract class AppPages {
  static List<GetPage> pages() => [
    GetPage(name: AppRoutes.homePage, page: () => const HomePage(),),
  ];
}
