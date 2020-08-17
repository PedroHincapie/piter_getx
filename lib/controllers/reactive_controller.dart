import 'package:get/get.dart';

class ReactiveController extends GetxController {
  RxInt contador = 1.obs;
  RxString fechaActual = "".obs;
  RxList<String> listaString = List<String>().obs;

  @override
  void onInit() {
    super.onInit();
    final fechaDeAhora = DateTime.now().toString();
    fechaActual.value = fechaDeAhora;
    listaString.add(fechaDeAhora);
  }

  void incrementar() {
    contador.value++;
    this.adicionarItem();
  }

  void obtenerFechaActual() {
    fechaActual.value = DateTime.now().toString();
  }

  void adicionarItem() {
    listaString.add(DateTime.now().toString());
  }

  void removerElementoLista(int index) {
    listaString.removeAt(index);
    contador.value--;
  }
}
