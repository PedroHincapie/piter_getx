import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/home_controller.dart';
import 'package:piter_getx/models/user.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) => !_.usuariosCargados
          ? ListView.builder(
              itemBuilder: (BuildContext context, index) {
                final User user = _.listaUsuarios[index];

                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text(user.firstName),
                  subtitle: Text(user.email),
                );
              },
              itemCount: _.listaUsuarios.length,
            )
          : Center(child: LinearProgressIndicator()),
    );
  }
}
