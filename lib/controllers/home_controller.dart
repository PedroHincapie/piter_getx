import 'package:get/get.dart';
import 'package:piter_getx/api/users_api.dart';
import 'package:piter_getx/models/user.dart';

class HomeController extends GetxController {
  int _contador = 0;

  List<User> _listaUsers = [];

  List<User> get listaUsers => _listaUsers;

  int get contador => _contador;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> cargarUsarios() async {
    final listaUsuarios = await UsersAPI.intancia.obtenerUsuarios(1);
    this._listaUsers = listaUsuarios;
    update(['users']);
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
