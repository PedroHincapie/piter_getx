import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:piter_getx/models/product.dart';

class GlobalControllers extends GetxController {
  List<Product> _listaProductos = [];
  Map<String, Product> _favoritos = Map();

  Map<String, Product> get favoritos => _favoritos;

  List<Product> get listaProductos => _listaProductos;

  @override
  void onInit() {
    super.onInit();
    this._cargarProductos();
  }

  Future<void> _cargarProductos() async {
    final String listaProdutos =
        await rootBundle.loadString('assets/products.json');

    this._listaProductos = (jsonDecode(listaProdutos) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print('Lista productos');

    update(['productos']);
  }

  void agregarAFavoritos(int index, bool agregarFavoritos) {
    Product product = this.listaProductos[index];
    product.favorita = agregarFavoritos;

    if (agregarFavoritos) {
      this.favoritos[product.name] = product;
    } else {
      this.favoritos.remove(product.name);
    }
    update(['productos', 'favoritos']);
  }
}
