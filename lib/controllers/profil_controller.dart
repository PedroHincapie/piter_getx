import 'package:get/get.dart';
import 'package:piter_getx/models/user.dart';

class ProfilController extends GetxController {
  User _usuario;

  User get obtenerUsuario => _usuario;

  @override
  void onInit() {
    super.onInit();
    this._usuario = Get.arguments as User;
  }
}
