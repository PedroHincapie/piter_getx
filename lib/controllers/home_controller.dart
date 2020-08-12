import 'package:get/get.dart';
import 'package:piter_getx/api/users_api.dart';
import 'package:piter_getx/models/user.dart';

class HomeController extends GetxController {
  int _contador = 0;
  bool _usuariosCargados = true;
  List<User> _listaUsuarios = [];

  List<User> get listaUsuarios => _listaUsuarios;

  int get contador => _contador;

  bool get usuariosCargados => _usuariosCargados;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    this.cargarUsarios();
  }

  Future<void> cargarUsarios() async {
    final listaUsuarios = await UsersAPI.intancia.obtenerUsuarios(1);
    this._listaUsers = listaUsuarios;
    update(['users']);
    this._listaUsuarios = listaUsuarios;
    this._usuariosCargados = !this.usuariosCargados;

    this.update(['users']);
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
