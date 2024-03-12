import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_pages.dart';
import 'app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Balance Organization',
      theme: ThemeData(primarySwatch: Colors.blue),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.homePage,
    );
  }
}
