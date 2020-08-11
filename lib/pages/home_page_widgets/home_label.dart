import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/home_controller.dart';

class HomeLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'text',
      builder: (_) => Text(
        _.contador.toString(),
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
