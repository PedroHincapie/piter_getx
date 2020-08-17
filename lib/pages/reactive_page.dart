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
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () {
                    debugPrint('Reactive 1');

                    return Text(
                      _.contador.value.toString(),
                      style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    );
                  },
                ),
                Obx(
                  () {
                    print('Reactive 2');

                    return Text(
                      _.fechaActual.value.toString(),
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    );
                  },
                )
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'Add',
                onPressed: _.incrementar,
                child: Icon(Icons.add),
              ),
              SizedBox(width: 20.0),
              FloatingActionButton(
                heroTag: 'Fecha Actual',
                onPressed: _.obtenerFechaActual,
                child: Icon(Icons.calendar_today),
              )
            ],
          ),
        );
      },
    );
  }
}
