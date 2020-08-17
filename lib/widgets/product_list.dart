import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/global_controller.dart';
import 'package:piter_getx/models/product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalControllers>(
      id: 'productos',
      builder: (_) => ListView.builder(
        itemBuilder: (context, index) {
          final Product product = _.listaProductos[index];
          return ListTile(
            title: Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
            ),
            subtitle: Text(
              '\$ ${product.price}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.favorite,
                color: product.favorita ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                _.agregarAFavoritos(index, !product.favorita);
              },
            ),
          );
        },
        itemCount: _.listaProductos.length,
      ),
    );
  }
}
