import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/profil_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilController>(
      init: ProfilController(),
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            '${_.obtenerUsuario.firstName}',
          ),
        ),
      ),
    );
  }
}
