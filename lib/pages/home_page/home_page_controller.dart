import 'package:get/get.dart';

class HomePageController extends GetxController {
  final RxInt _selectedIndexPage = 0.obs;
  
  int get selectedIndexPage => _selectedIndexPage.value;

  void changePage(int indexPage) {
    printInfo(info: 'Index clicado: $indexPage');

    _selectedIndexPage.value = indexPage;
  }
}
