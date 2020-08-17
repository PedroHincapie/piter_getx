import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt contador = 0.obs;

  void incrementar() {
    contador.value++;
  }
}
