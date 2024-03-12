import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => const MyHomePage();
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _selectIndexPage = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold,);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Página inicial',
      style: optionStyle,
    ),
    Text(
      'Página de cadastro',
      style: optionStyle,
    ),
  ];

  void _changePage(int indexPage) {
    setState(() {
      _selectIndexPage = indexPage;
    });
  }

  List<BottomNavigationBarItem> _bottomNavigationBarItens() => const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início',),
    BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: 'Cadastros',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectIndexPage),),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItens(),
        currentIndex: _selectIndexPage,
        selectedItemColor: Colors.red,
        onTap: _changePage,
        ),
    );
  }
}
