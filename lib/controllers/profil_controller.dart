import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/models/user.dart';

class ProfilController extends GetxController {
  User _usuario;

  int _campoEdad = 0;

  User get obtenerUsuario => _usuario;

  @override
  void onInit() {
    super.onInit();
    this._usuario = Get.arguments as User;
  }

  void capturarCambiosDelTexto(String edad) {
    this._campoEdad = int.parse(edad);
  }

  void validarEdad() {
    if (this._campoEdad >= 18) {
      Get.back(result: this._campoEdad);
    } else {
      Get.dialog(
        AlertDialog(
          title: Text('Error edad no permitida'),
          content: Text('Ingrese una edad válida'),
          actions: [
            FlatButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Aceptar'),
            ),
          ],
        ),
      );
    }
  }
}
