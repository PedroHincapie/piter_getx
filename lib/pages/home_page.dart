import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/controllers/home_controller.dart';

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
      body: Center(
        child: GetBuilder<HomeController>(
          id: 'text',
          builder: (_) => Text(
            _.contador.toString(),
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _.incrementarContador();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
