import 'package:flutter/material.dart';
import 'package:flutter_balance_organization/shared/app_text_style.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());

  final List<Widget> _widgetOptions = const <Widget>[
    Text(
      'Página inicial',
      style: AppTextStyle.h3B,
    ),
    Text(
      'Página de cadastro',
      style: AppTextStyle.h3B,
    ),
  ];

  final List<BottomNavigationBarItem> _bottomNavigationBarItens = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Início',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.app_registration),
      label: 'Cadastros',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItens,
        currentIndex: controller.selectedIndexPage,
        selectedItemColor: Colors.red,
        onTap: controller.changePage,
      ),
      body: Center(
        child: Obx(
          () => _widgetOptions.elementAt(controller.selectedIndexPage),
        ),
      ),
    );
  }
}
