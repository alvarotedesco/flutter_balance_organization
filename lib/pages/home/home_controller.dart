import 'package:flutter/material.dart';
import 'package:flutter_balance_organization/pages/dashboard/dashboard_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt selectedIndexPage = 0.obs;

  final List<Widget> pages = [
    const DashboardPage(),
    const Text('Cadastros'),
    const Text('Importar/Exportar'),
  ];
}
