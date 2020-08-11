import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      dispose: (_) {
        print('Dispose');
      },
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
