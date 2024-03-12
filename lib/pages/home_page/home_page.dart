import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = Get.put(HomePageController());

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  final List<Widget> _widgetOptions = const <Widget>[
    Text(
      'Página inicial',
      style: optionStyle,
    ),
    Text(
      'Página de cadastro',
      style: optionStyle,
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
