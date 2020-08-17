import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:piter_getx/controllers/profil_controller.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilController>(
      init: ProfilController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back), onPressed: () => Get.back()),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${_.obtenerUsuario.firstName} ${_.obtenerUsuario.lastName}',
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: _.capturarCambiosDelTexto,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Edad',
                  ),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text('Aceptar'),
                elevation: 10.6,
                onPressed: _.validarEdad,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
