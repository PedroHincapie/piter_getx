import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt contador = 0.obs;
  RxString fechaActual = DateTime.now().toString().obs;

  void incrementar() {
    contador.value++;
  }

  void obtenerFechaActual() {
    fechaActual.value = DateTime.now().toString();
  }
}
