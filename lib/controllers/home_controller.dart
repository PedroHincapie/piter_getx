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
    update([
      'text',
    ], _condicion());
  }

  /*
  Por medio de la presente condicion podremos controlar cuando se necesita o no haceer un
  render del elemento id en la vista
   */
  bool _condicion() => _contador <= 10 || _contador >= 11;
}
