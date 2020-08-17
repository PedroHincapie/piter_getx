import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        print('Reactive');

        return Scaffold(
          body: Center(
            child: Obx(
              () => Text(
                _.contador.value.toString(),
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _.incrementar,
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
