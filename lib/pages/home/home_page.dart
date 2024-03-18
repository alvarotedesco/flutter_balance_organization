import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(15, 36, 62, 1),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(15, 36, 62, 1),
          currentIndex: controller.selectedIndexPage(),
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color.fromRGBO(0, 238, 255, 1),
          onTap: controller.selectedIndexPage.call,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_add),
              label: 'Cadastros',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_file_sharp),
              label: 'Importar/Exportar',
            ),
          ],
        ),
      ),
      body: Obx(
        () => Center(
          child: controller.pages[controller.selectedIndexPage()],
        ),
      ),
    );
  }
}
