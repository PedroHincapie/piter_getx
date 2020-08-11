import 'package:get/get.dart';

class HomeController extends GetxController {
  int _contador = 0;

  int get contador => _contador;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void incrementarContador() {
    this._contador++;
    update();
  }
}
