import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:piter_getx/controllers/home_controller.dart';
import 'package:piter_getx/pages/home_page_widgets/home_list.dart';

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
//      body: Center(
//        child: HomeLabel(),
//      ),
      body: HomeList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _.incrementarContador();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
