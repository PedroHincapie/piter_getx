import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/controllers/global_controller.dart';
import 'package:piter_getx/controllers/home_controller.dart';
import 'package:piter_getx/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => buildScaffold(_),
    );
  }

  Scaffold buildScaffold(HomeController _) {
    print('build home');
    return Scaffold(
      appBar: AppBar(
        actions: [
          GetBuilder<GlobalControllers>(
            id: 'favoritos',
            builder: (_) => FlatButton(
              onPressed: () {},
              child: Text(
                'Favoritos ${_.favoritos.length}',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
//      body: Center(
//        child: HomeLabel(),
//      ),
//      body: HomeList(),
      body: ProductList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _.incrementarContador();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
