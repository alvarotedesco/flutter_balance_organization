import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _selectedIndexPage = 0.obs;
  int get selectedIndexPage => _selectedIndexPage.value;

  void changePage(int indexPage) => _selectedIndexPage.value = indexPage;
}
