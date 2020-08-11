import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            _.contador.toString(),
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _.incrementarContador();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
